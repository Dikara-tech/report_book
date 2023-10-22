import 'dart:async';

import 'package:dikara_core/dikara_core.dart';
import 'package:flutter/material.dart';
import 'package:report_book/src/presentation/features/login/bloc/form/login_form.dart';
import 'package:report_book/src/presentation/features/login/bloc/form/login_form_state.dart';
import 'package:report_book/src/presentation/features/login/bloc/login/login_bloc.dart';
import 'package:report_book/src/presentation/features/login/bloc/login/login_state.dart';
import 'package:report_book/src/presentation/routers/router.dart';
import 'package:report_book/src/widgets/custom_button_widget.dart';
import 'package:report_book/src/widgets/custom_text_field_widget.dart';

part '_title_welcome_login.dart';

part '_text_input_teacher_id.dart';

part '_button_submit_login.dart';

@RoutePage()
class LoginScreenPage extends StatelessWidget {
  const LoginScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: MultiProvider(
          providers: [
            Provider(create: (context) => LoginBloc.create()),
            Provider(create: (context) => LoginForm())
          ],
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: kToolbarHeight),
              _TitleWelcomeLogin(),
              _TextInputTeacher(),
              Spacer(),
              _ButtonSubmitLogin(),
            ],
          ),
        ),
      ),
    );
  }
}
