part of 'register_student_screen_page.dart';

class _ButtonCreateWidget extends StatelessWidget {
  const _ButtonCreateWidget();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomButtonWidget(titleButton: 'Buat Siswa'),
    );
  }
}
