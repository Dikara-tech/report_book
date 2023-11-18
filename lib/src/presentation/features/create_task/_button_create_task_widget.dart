part of 'create_task_screen_page.dart';

class _ButtonCreateTaskWidget extends StatelessWidget {
  const _ButtonCreateTaskWidget();

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: sizeWidth,
      child: CustomButtonWidget(
        titleButton: 'Buat Tugas',
        onAction: () {
          final taskModel = context.read<TaskFormProvider>().value;
          context.read<CreateTaskCubit>().crateTask(taskModel);
        },
      ),
    );
  }
}
