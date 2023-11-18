part of 'profile_screen_page.dart';

class _TextClassNameWidget extends StatelessWidget {
  const _TextClassNameWidget();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      title: Text('Kelas', style: theme.textTheme.titleSmall),
      subtitle: Text(
        'Nama Kelas',
        style:
            theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
