part of 'task_detail_screen_page.dart';

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    this.title,
  });

  final String? title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(title ?? 'No Title', style: theme.textTheme.titleLarge),
    );
  }
}
