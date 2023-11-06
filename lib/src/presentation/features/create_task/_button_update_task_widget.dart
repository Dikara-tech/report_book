part of 'create_task_screen_page.dart';

class _ButtonUpdateTaskWidget extends StatelessWidget {
  const _ButtonUpdateTaskWidget();

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: sizeWidth,
      child: CustomButtonWidget(
        titleButton: 'Update Task',
        onAction: () {
          final taskModel = context.read<TaskFormProvider>().value;
          context.read<CreateTaskCubit>().updateTask(taskModel);
        },
      ),
    );
  }
}
