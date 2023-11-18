part of 'create_multi_task_screen_page.dart';

class _RadioTaskWidget extends StatelessWidget {
  const _RadioTaskWidget();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final taskFormWatch = context.watch<TaskFormProvider>().value.taskTypeModel;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Tipe Tugas',
              style: theme.textTheme.titleSmall,
            ),
          ),
          RadioListTile(
            value: TaskTypeModel.akhlak,
            groupValue: taskFormWatch,
            title: const Text('Akhlak'),
            onChanged: (value) {
              final taskType = value;
              if (taskType != null) onChange(context, taskType);
            },
          ),
          RadioListTile(
            value: TaskTypeModel.mapel,
            groupValue: taskFormWatch,
            title: const Text('Mapel'),
            onChanged: (value) {
              final taskType = value;
              if (taskType != null) onChange(context, taskType);
            },
          ),
        ],
      ),
    );
  }

  void onChange(BuildContext context, TaskTypeModel taskTypeModel) {
    context.read<TaskFormProvider>().onChangeTaskType(taskTypeModel);
  }
}
