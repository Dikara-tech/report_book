part of 'login_screen_page.dart';

class _TextInputPassword extends StatelessWidget {
  const _TextInputPassword();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: CustomTextFieldWidget(
        hintText: 'Input Password',
        errorText: "error",
      ),
    );
  }
}
