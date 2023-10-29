part of 'tasks_screen_page.dart';

class _TaskContentListWidget extends StatelessWidget {
  const _TaskContentListWidget();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocListener<EditTaskCubit, ResourceState<void>>(
      listener: (context, state) => state.maybeWhen(
        orElse: () => null,
        error: (code, message, stacktrace, data) =>
            ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.black,
            content: Text(
              'Error State',
              style: theme.textTheme.bodySmall?.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
        success: (code, message, data) =>
            ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.black,
            content: Text(
              'Success State',
              style: theme.textTheme.bodySmall?.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      child: BlocBuilder<TaskListCubit, TaskListState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const SizedBox.expand(
              child: Center(child: CircularProgressIndicator()),
            );
          }

          return ListView.separated(
            itemCount: state.tasks.length,
            separatorBuilder: (context, index) => const Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0),
            ),
            itemBuilder: (context, index) => Padding(
              key: ValueKey(state.tasks[index].taskId),
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Card(
                child: ListTile(
                  leading: _CheckBoxTask(
                    taskTypeModel: state.tasks[index].taskTypeModel,
                    isCheck: state.tasks[index].isCheck,
                    onChange: (value) {
                      GoSimpleDialog.showDialog(
                        context,
                        title: 'Task Status',
                        message: 'You will change status task?',
                        confirmText: 'Ok',
                        onConfirm: () {
                          final taskId = state.tasks[index].taskId;
                          if (taskId != null) {
                            context
                                .read<EditTaskCubit>()
                                .updateCheckBox(taskId, value ?? false);
                          }
                        },
                      );
                    },
                  ),
                  title: Text(state.tasks[index].taskTitle),
                  subtitle: Text(
                    state.tasks[index].taskDetail,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: GestureDetector(
                    child: const Icon(Icons.delete, size: 24.0),
                    onTap: () {
                      GoSimpleDialog.showDialog(
                        context,
                        title: 'Delete Task',
                        message: 'You will delete task?',
                        confirmText: 'delete',
                        onConfirm: () {
                          final taskId = state.tasks[index].taskId;
                          if (taskId != null) {
                            context.read<EditTaskCubit>().deleteTask(taskId);
                          }
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _CheckBoxTask extends StatelessWidget {
  const _CheckBoxTask({
    required this.taskTypeModel,
    this.isCheck = false,
    required this.onChange,
  });

  final TaskTypeModel taskTypeModel;
  final bool isCheck;
  final ValueChanged<bool?> onChange;

  @override
  Widget build(BuildContext context) {
    if (taskTypeModel == TaskTypeModel.MemoizationTask) {
      return Checkbox(
        value: isCheck,
        onChanged: onChange,
      );
    }

    return const SizedBox.shrink();
  }
}
