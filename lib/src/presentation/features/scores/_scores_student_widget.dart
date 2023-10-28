part of 'scores_screen_page.dart';

class _ScoresStudentWidget extends StatelessWidget {
  const _ScoresStudentWidget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScoresListCubit, ScoresListState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const SizedBox.expand(
            child: Center(child: CircularProgressIndicator()),
          );
        }

        return ListView.builder(
          itemCount: state.scores.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(state.scores[index].title),
              subtitle: Text('Average Score: ${state.scores[index].average}'),
              onTap: () {
                final studyId = state.scores[index].studyId;
                if (studyId != null) {
                  AutoRouter.of(context)
                      .push(ScoreDetailScreenRouter(scoreById: studyId));
                }
              },
            );
          },
        );
      },
    );
  }
}
