part of 'create_score_screen_page.dart';

class _TitleFormWidget extends StatelessWidget {
  const _TitleFormWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
      child: CustomTextFieldWidget(
        hintText: 'Title Score',
        onChange: (value) {
          context.read<FormListScores>().onChangeTextTitle = value;
        },
      ),
    );
  }
}
