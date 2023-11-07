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
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Total Task: ${state.scores[index].totalTask}'),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                      'Total Task Mapel: ${state.scores[index].totalStudies}'),
                ),
              ],
            ),
            onTap: () => AutoRouter.of(context).push(TaskScreenRouter(
              studentId: state.scores[index].idTask,
              reportReadOnly: true,
            )),
          ),
        );
      },
    );
  }
}
