part of 'create_announcement_screen_page.dart';

class _TextFieldDetailAnnouncementWidget extends StatelessWidget {
  const _TextFieldDetailAnnouncementWidget();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomTextFieldWidget(
        hintText: 'Detail Annoucement',
        maxLines: 5,
      ),
    );
  }
}
