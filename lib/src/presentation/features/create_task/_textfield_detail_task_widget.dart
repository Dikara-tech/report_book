part of 'create_task_screen_page.dart';

class _TextFieldDetailTaskWidget extends StatelessWidget {
  const _TextFieldDetailTaskWidget();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomTextFieldWidget(
        hintText: 'Detail Task',
      ),
    );
  }
}
