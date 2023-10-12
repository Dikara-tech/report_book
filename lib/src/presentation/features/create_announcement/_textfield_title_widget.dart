part of 'create_announcement_screen_page.dart';

class _TextFieldTitleWidget extends StatelessWidget {
  const _TextFieldTitleWidget();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomTextFieldWidget(
        hintText: 'Title Annoucement',
      ),
    );
  }
}
