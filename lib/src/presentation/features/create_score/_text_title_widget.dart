part of 'create_score_screen_page.dart';

class _TextTitleWidget extends StatelessWidget {
  const _TextTitleWidget();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      child: Text(
        'Form Scores',
        style: theme.textTheme.titleMedium,
      ),
    );
  }
}
