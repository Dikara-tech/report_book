part of 'create_task_screen_page.dart';

class _TextFieldDetailTaskWidget extends StatelessWidget {
  const _TextFieldDetailTaskWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomTextFieldWidget(
        hintText: 'Detail Task',
        maxLines: 5,
        onChange: (value) {
          context.read<TaskFormProvider>().onChangeTaskDetail(value);
        },
      ),
    );
  }
}
