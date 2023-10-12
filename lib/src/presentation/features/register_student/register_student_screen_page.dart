import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:report_book/src/widgets/custom_button_widget.dart';
import 'package:report_book/src/widgets/custom_text_field_widget.dart';

part '_textfield_name_widget.dart';

part '_button_create_widget.dart';

part '_textfield_student_class_widget.dart';

@RoutePage()
class RegisterStudentScreenPage extends StatelessWidget {
  const RegisterStudentScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Student'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              children: const [
                _TextFieldNameWidget(),
                _TextFieldStudentClassWidget()
              ],
            ),
          ),
          const _ButtonCreateWidget(),
        ],
      ),
    );
  }
}
