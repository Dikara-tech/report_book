part of 'profile_screen_page.dart';

class _CircleImageProfileWidget extends StatelessWidget {
  const _CircleImageProfileWidget();

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50.0,
      child: RandomAvatar('Budi'),
    );
  }
}
