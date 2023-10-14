part of 'create_announcement_screen_page.dart';

class _ButtonCreateWidget extends StatelessWidget {
  const _ButtonCreateWidget();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      child: const CustomButtonWidget(
        titleButton: 'Create Announcement',
      ),
    );
  }
}
