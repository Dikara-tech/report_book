part of 'login_screen_page.dart';

class _TextInputTeacher extends StatelessWidget {
  const _TextInputTeacher();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomTextFieldWidget(
        hintText: 'Input TeacherID/StudentID',
      ),
    );
  }
}
