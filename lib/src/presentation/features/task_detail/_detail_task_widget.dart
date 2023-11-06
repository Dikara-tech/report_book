part of 'task_detail_screen_page.dart';

class _DetailTaskWidget extends StatelessWidget {
  const _DetailTaskWidget({this.detailTask});

  final String? detailTask;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Text(detailTask ?? 'No Detail',
            style: theme.textTheme.bodyLarge));
  }
}
