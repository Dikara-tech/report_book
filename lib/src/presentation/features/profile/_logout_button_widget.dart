part of 'profile_screen_page.dart';

class _LogOutButton extends StatelessWidget {
  const _LogOutButton();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocListener<LogoutCubit, ResourceState<void>>(
      listener: (context, state) => state.maybeWhen(
        orElse: () => null,
        success: (code, message, data) =>
            AutoRouter.of(context).replace(const LoginScreenRouter()),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<ProfileCubit, ResourceState<void>>(
          builder: (context, state) => state.maybeWhen(
            orElse: () => GoButton.outline(
              text: 'Logout',
              borderColor: theme.colorScheme.primaryContainer,
              textStyle: theme.textTheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold) ??
                  const TextStyle(),
              onPressed: () {
                context.read<LogoutCubit>().signOut();
              },
            ),
            loading: (data) => GoButton.outline(
              text: 'Logout',
              onPressed: null,
              borderColor: theme.colorScheme.primaryContainer,
              textStyle: theme.textTheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold) ??
                  const TextStyle(),
            ),
          ),
        ),
      ),
    );
  }
}
