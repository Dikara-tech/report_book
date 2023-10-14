part of 'register_student_screen_page.dart';

class _TextFieldStudentClassWidget extends StatelessWidget {
  const _TextFieldStudentClassWidget();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: CustomTextFieldWidget(
        hintText: 'Choose Class Student',
      ),
    );
  }
}
