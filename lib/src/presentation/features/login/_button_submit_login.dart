part of 'login_screen_page.dart';

class _ButtonSubmitLogin extends StatelessWidget {
  const _ButtonSubmitLogin();

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);

    return SizedBox(
      width: sizeWidth,
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) => state.maybeWhen(
          orElse: () => null,
          student: () => AutoRouter.of(context).replace(const HomeScreenStudentRouter()),
          teacher: () =>
              AutoRouter.of(context).replace(const HomeScreenRouter()),
          notFoundUser: () => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.black,
              content: Text(
                'User tidak ditemukan',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          error: () => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.black,
              content: Text(
                'Something Wrong',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        builder: (context, state) => state.maybeWhen(
          orElse: () => const _SubmitButtonWidget(),
          loading: () => const CustomButtonWidget(
            titleButton: 'Submit',
            onAction: null,
          ),
        ),
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
        if (!isValid) {
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
      .read<LoginCubit>()
      .submitLogin(context.read<LoginForm>().userIdText);
}
