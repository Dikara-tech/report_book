part of 'register_student_screen_page.dart';

class _TextFieldNameWidget extends StatelessWidget {
  const _TextFieldNameWidget();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomTextFieldWidget(
        hintText: 'Nama Siswa',
      ),
    );
  }
}
