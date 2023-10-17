part of 'login_screen_page.dart';

class _TextInputPassword extends StatelessWidget {
  const _TextInputPassword();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: StreamBuilder(
        stream: context.read<LoginForm>().watchErrorPassword,
        builder: (context, snapshot) => CustomTextFieldWidget(
          hintText: 'Input Password',
          errorText: errorText(snapshot.data),
          onChange: (value) {
            context.read<LoginForm>().onSetPassword(value);
          },
        ),
      ),
    );
  }

  String? errorText(LoginFormState? loginFormState) {
    final loginState = loginFormState;
    if (loginState != null) {
      if (loginFormState is LoginFormEmptyState) {
        return 'Fill the Blank';
      }
    }

    return null;
  }
}
