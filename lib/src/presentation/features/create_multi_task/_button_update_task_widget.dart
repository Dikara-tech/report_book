part of 'create_multi_task_screen_page.dart';

class _ButtonUpdateTaskWidget extends StatelessWidget {
  const _ButtonUpdateTaskWidget();

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: sizeWidth,
      child: CustomButtonWidget(
        titleButton: 'Ubah Tugas',
        onAction: () {
          final taskModel = context.read<TaskFormProvider>().value;
          context.read<CreateTaskCubit>().updateTask(taskModel);
        },
      ),
    );
  }
}
