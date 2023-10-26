part of 'chat_contact_screen_page.dart';

class _ChatCardWidget extends StatelessWidget {
  const _ChatCardWidget({
    required this.name,
    this.onAction,
  });

  final String name;

  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      onTap: onAction,
      title: Text(
        name,
        style: theme.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
