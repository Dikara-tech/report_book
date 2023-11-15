part of 'report_screen_page.dart';

class _ReportTasksWidget extends StatelessWidget {
  const _ReportTasksWidget();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<ReportsCubit, ReportsState>(
      builder: (context, state) {
        if (state.isLoading || state.isError) {
          return const SizedBox.expand(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        return ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          itemCount: state.scores.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(state.scores[index].assignedName,
                style: theme.textTheme.titleLarge),
            subtitle: Text(
                'Total Percentage Done: ${_calculatePercentage(state.scores[index])}%'),
            onTap: () => AutoRouter.of(context).push(TaskScreenRouter(
              studentId: state.scores[index].idTask,
              reportReadOnly: true,
            )),
          ),
        );
      },
    );
  }

  int _calculatePercentage(ScoreModel scoreModel) {
    final resultScore = max(
      0.0,
      ((scoreModel.totalTaskDone ?? 0.0) / scoreModel.totalTask) * 100,
    );

    return resultScore.round();
  }
}
