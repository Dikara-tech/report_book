part of 'create_score_screen_page.dart';

class _CreateScoreButtonWidget extends StatelessWidget {
  const _CreateScoreButtonWidget();

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: sizeWidth,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: CustomButtonWidget(
          titleButton: 'Create Task',
          onAction: () {
            final form = context.read<FormListScores>();
            context.read<CreateScoreCubit>().submitScore(
                  form.formList,
                  form.titleText,
                );
          },
        ),
      ),
    );
  }
}
