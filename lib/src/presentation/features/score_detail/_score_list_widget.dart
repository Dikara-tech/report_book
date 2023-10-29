part of 'score_detail_screen_page.dart';

class _ScoreListWidget extends StatelessWidget {
  const _ScoreListWidget();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<ScoreDetailCubit, ResourceState<List<ScoreModel>>>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const SizedBox.shrink(),
        success: (code, message, data) => ListView.separated(
          separatorBuilder: (context, index) => Divider(),
          itemBuilder: (context, index) => ListTile(
            title: Text(data[index].studyTitle),
            trailing: Text(
              data[index].score.toString(),
              style: theme.textTheme.titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          itemCount: data.length,
        ),
      ),
    );
  }
}
