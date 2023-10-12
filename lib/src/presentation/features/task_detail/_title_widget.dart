part of 'task_detail_screen_page.dart';

class _TitleWidget extends StatelessWidget {
  const _TitleWidget();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text('Lorem Ipsum', style: theme.textTheme.headlineMedium),
    );
  }
}
