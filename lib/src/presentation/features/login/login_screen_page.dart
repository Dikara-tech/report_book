import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:report_book/src/presentation/routers/router.dart';
import 'package:report_book/src/widgets/custom_button_widget.dart';
import 'package:report_book/src/widgets/custom_text_field_widget.dart';

part '_title_welcome_login.dart';

part '_text_input_password.dart';

part '_text_input_teacher_id.dart';

part '_button_submit_login.dart';

@RoutePage()
class LoginScreenPage extends StatelessWidget {
  const LoginScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: kToolbarHeight),
            _TitleWelcomeLogin(),
            _TextInputTeacher(),
            _TextInputPassword(),
            Spacer(),
            _ButtonSubmitLogin(),
          ],
        ),
      ),
    );
  }
}
