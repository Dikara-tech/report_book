part of 'create_score_screen_page.dart';

class _FormListWidget extends StatelessWidget {
  const _FormListWidget();

  @override
  Widget build(BuildContext context) {
    final formListWatch = context.watch<FormListScores>().formList;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        for (var index = 0; index < formListWatch.length; index++)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: _FormTextScoreWidget(
              key: ValueKey(index),
              title: formListWatch[index].studyTitle,
              onChangeValue: (value) =>
                  context.read<FormListScores>().onChangeScoreItem(index, value),
            ),
          )
      ],
    );
  }
}

class _FormTextScoreWidget extends StatelessWidget {
  const _FormTextScoreWidget({
    super.key,
    required this.title,
    this.onChangeValue,
  });

  final String title;
  final ValueChanged<String>? onChangeValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: CustomTextFieldWidget(
            textInputType: TextInputType.number,
            maxLines: 1,
            onChange: onChangeValue,
          ),
        )
      ],
    );
  }
}
