part of 'login_screen_page.dart';

class _ButtonSubmitLogin extends StatelessWidget {
  const _ButtonSubmitLogin();

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery
        .of(context)
        .size
        .width;
    return SizedBox(
      width: sizeWidth,
      child: StreamBuilder<LoginState>(
        initialData: const LoginState.initial(),
        stream: context
            .read<LoginBloc>()
            .watchState,
        builder: (context, snapshot) {
          final dataResult = snapshot.data;

          if (dataResult != null) {
            return dataResult.maybeWhen(
              orElse: () => const _SubmitButtonWidget(),
              loading: () =>
              const CustomButtonWidget(
                titleButton: 'Submit',
                onAction: null,
              ),
            );
          }
          return const _SubmitButtonWidget();
        },
      ),
    );
  }
}


class _SubmitButtonWidget extends StatelessWidget {
  const _SubmitButtonWidget();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      initialData: false,
      stream: context
          .read<LoginForm>()
          .watchStatusForm,
      builder: (context, snapshot) {
        final isValid = snapshot.data ?? false;

        return CustomButtonWidget(
          titleButton: 'Submit',
          onAction: isValid
              ? () {
            final email = context
                .read<LoginForm>()
                .emailText;
            final password = context
                .read<LoginForm>()
                .passwordText;

            context.read<LoginBloc>().submitLogin(email, password);
          }
              : null,
        );
      },
    );
  }
}
