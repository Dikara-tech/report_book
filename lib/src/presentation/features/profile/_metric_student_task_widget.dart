part of 'profile_screen_page.dart';

class _MetricStudentTaskWidget extends StatelessWidget {
  const _MetricStudentTaskWidget({
    super.key,
    this.totalTask = 0,
    this.totalTaskDone = 0,
  });

  final int totalTask;
  final int totalTaskDone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _TaskValueWidget(
            title: 'Total Task Done',
            totalValue: totalTaskDone,
          ),
          _TaskValueWidget(
            title: 'Total Task',
            totalValue: totalTask,
          )
        ],
      ),
    );
  }
}

class _TaskValueWidget extends StatelessWidget {
  const _TaskValueWidget({super.key, required this.title, this.totalValue = 0});

  final String title;
  final int totalValue;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(title, style: theme.textTheme.titleMedium),
        Text('${totalValue < 99 ? totalValue : "99+"}',
            style: theme.textTheme.headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
