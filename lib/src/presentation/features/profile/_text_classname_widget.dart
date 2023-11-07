part of 'profile_screen_page.dart';

class _TextClassNameWidget extends StatelessWidget {
  const _TextClassNameWidget();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      title: Text('Class', style: theme.textTheme.titleSmall),
      subtitle: Text(
        'Class Name',
        style:
            theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
