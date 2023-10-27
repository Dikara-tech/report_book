part of 'create_task_screen_page.dart';

class _RadioTaskWidget extends StatelessWidget {
  const _RadioTaskWidget();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Task Type', style: theme.textTheme.titleSmall),
          ListTile(
            leading: ValueListenableBuilder(
              valueListenable: context.read<TaskFormProvider>(),
              builder: (context, value, child) {
                return Radio<TaskTypeModel>(
                  value: TaskTypeModel.DefaultTask,
                  groupValue: value.taskTypeModel,
                  onChanged: (value) {
                    if (value != null) {
                      context.read<TaskFormProvider>().onChangeTaskType(value);
                    }
                  },
                );
              },
            ),
            title: const Text('Default Task'),
          ),
          ListTile(
            leading: ValueListenableBuilder(
              valueListenable: context.read<TaskFormProvider>(),
              builder: (context, value, child) {
                return Radio<TaskTypeModel>(
                  value: TaskTypeModel.MemoizationTask,
                  groupValue: value.taskTypeModel,
                  onChanged: (value) {
                    if (value != null) {
                      context.read<TaskFormProvider>().onChangeTaskType(value);
                    }
                  },
                );
              },
            ),
            title: const Text('Memoization'),
          )
        ],
      ),
    );
  }
}
