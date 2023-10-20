part of 'login_screen_page.dart';

class _ButtonSubmitLogin extends StatelessWidget {
  const _ButtonSubmitLogin();

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: sizeWidth,
      child: StreamBuilder<LoginState>(
        initialData: const LoginState.initial(),
        stream: context.read<LoginBloc>().watchState,
        builder: (context, snapshot) {
          final dataResult = snapshot.data;

          if (dataResult != null) {
            return dataResult.maybeWhen(
              orElse: () => const _SubmitButtonWidget(),
              loading: () => const CustomButtonWidget(
                  titleButton: 'Submit', onAction: null),
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
      stream: context.read<LoginForm>().watchStatusForm,
      builder: (context, snapshot) {
        final isValid = snapshot.data ?? false;
        if (isValid) {
          return CustomButtonWidget(
            titleButton: 'Submit',
            onAction: () => _onAction(context),
          );
        }

        return const CustomButtonWidget(
          titleButton: 'Submit',
          onAction: null,
        );
      },
    );
  }

  void _onAction(BuildContext context) => context
      .read<LoginBloc>()
      .submitLogin(context.read<LoginForm>().userIdText);
}
