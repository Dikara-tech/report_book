part of 'create_task_screen_page.dart';

class _TextFieldDeadlineWidget extends StatelessWidget {
  const _TextFieldDeadlineWidget();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: CustomTextFieldWidget(
        hintText: 'Deadline Task',
      ),
    );
  }
}
