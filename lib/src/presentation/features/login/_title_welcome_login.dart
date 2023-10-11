part of 'login_screen_page.dart';

class _TitleWelcomeLogin extends StatelessWidget {
  const _TitleWelcomeLogin();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 16.0,
      ),
      child: Text(
        'Welcome',
        style: theme.textTheme.headlineLarge
            ?.copyWith(fontWeight: FontWeight.bold)
            .copyWith(color: theme.colorScheme.primaryContainer),
      ),
    );
  }
}
