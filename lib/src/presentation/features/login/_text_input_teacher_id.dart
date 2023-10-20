part of 'login_screen_page.dart';

class _TextInputTeacher extends StatelessWidget {
  const _TextInputTeacher();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: StreamBuilder<LoginFormState?>(
        initialData: null,
        stream: context.read<LoginForm>().watchError,
        builder: (context, snapshot) => CustomTextFieldWidget(
          hintText: 'Input TeacherID/UserId',
          maxLines: 1,
          errorText: errorText(snapshot.data),
          textInputType: TextInputType.emailAddress,
          onChange: (value) {
            context.read<LoginForm>().onSetEmail(value);
          },
        ),
      ),
    );
  }

  String? errorText(LoginFormState? loginFormState) {
    final loginState = loginFormState;
    if (loginState != null) {
      if (loginState is LoginFormEmptyState) {
        return 'fill the blank';
      }
    }

    return null;
  }
}
