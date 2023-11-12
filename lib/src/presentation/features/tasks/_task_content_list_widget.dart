part of 'tasks_screen_page.dart';

class _TaskContentListWidget extends StatelessWidget {
  const _TaskContentListWidget(this.isEnableCreateAndUpdate);

  final bool isEnableCreateAndUpdate;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskListCubit, TaskListState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const SizedBox.expand(
            child: Center(child: CircularProgressIndicator()),
          );
        }

        if (state.tasks.isEmpty) {
          return const SizedBox.expand(
            child: Center(child: Text('Empty List')),
          );
        }

        return ListView.separated(
          itemCount: state.tasks.length,
          separatorBuilder: (context, index) =>
              const Padding(padding: EdgeInsets.symmetric(vertical: 4.0)),
          itemBuilder: (context, index) => Padding(
            key: ValueKey(state.tasks[index].taskId),
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Card(
              child: ListTile(
                title: Text(state.tasks[index].title),
                subtitle: Text(
                  state.tasks[index].detail,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: state.tasks[index].isDone
                    ? const Icon(
                        Icons.check,
                        color: Colors.greenAccent,
                      )
                    : null,
                onTap: () => AutoRouter.of(context).push(
                  TaskDetailScreenRouter(
                    taskId: state.tasks[index].taskId,
                    assignId: state.tasks[index].assignIdUser,
                    titleTask: state.tasks[index].title,
                    detailTask: state.tasks[index].detail,
                    taskTypeModel: state.tasks[index].taskTypeModel,
                    isDone: state.tasks[index].isDone,
                    isEnableEdit: isEnableCreateAndUpdate,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
