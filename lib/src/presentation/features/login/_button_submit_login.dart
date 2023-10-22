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

class _SubmitButtonWidget extends StatefulWidget {
  const _SubmitButtonWidget();

  @override
  State<_SubmitButtonWidget> createState() => _SubmitButtonWidgetState();
}

class _SubmitButtonWidgetState extends State<_SubmitButtonWidget> {
  StreamSubscription<LoginState>? streamSubscription;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    streamSubscription?.cancel();
    streamSubscription = context.read<LoginBloc>().watchState.listen((event) {
      if (event is LoginSuccessTeacherState) {
        AutoRouter.of(context).replace(const HomeScreenRouter());
      } else if (event is LoginNotFoundUserState) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('User not Found')),
        );
      } else if (event is LoginErrorState) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Something Wrong')),
        );
      }
    });
  }

  @override
  void dispose() {
    streamSubscription?.cancel();
    super.dispose();
  }

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
            onAction: _onAction,
          );
        }

        return const CustomButtonWidget(
          titleButton: 'Submit',
          onAction: null,
        );
      },
    );
  }

  void _onAction() => context
      .read<LoginBloc>()
      .submitLogin(context.read<LoginForm>().userIdText);
}
