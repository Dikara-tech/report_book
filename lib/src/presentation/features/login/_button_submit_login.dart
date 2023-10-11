part of 'login_screen_page.dart';

class _ButtonSubmitLogin extends StatelessWidget {
  const _ButtonSubmitLogin();

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: sizeWidth,
      child: CustomButtonWidget(
        titleButton: 'Submit',
        onAction: () {},
      ),
    );
  }
}
