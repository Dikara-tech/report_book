part of 'create_task_screen_page.dart';

class _TextFieldTitleWidget extends StatelessWidget {
  const _TextFieldTitleWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomTextFieldWidget(
        hintText: 'Title Task',
        onChange: (value) {
          context.read<TaskFormProvider>().onChangeTaskTitle(value);
        },
      ),
    );
  }
}
