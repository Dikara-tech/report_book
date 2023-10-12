import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:report_book/src/widgets/custom_button_widget.dart';
import 'package:report_book/src/widgets/custom_text_field_widget.dart';

part '_button_create_task_widget.dart';

part '_textfield_title_widget.dart';

part '_textfield_deadline_widget.dart';

part '_textfield_detail_task_widget.dart';

@RoutePage()
class CreateTaskScreenPage extends StatelessWidget {
  const CreateTaskScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Task'),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _TextFieldTitleWidget(),
          _TextFieldDeadlineWidget(),
          _TextFieldDetailTaskWidget(),
          _ButtonCreateTaskWidget(),
        ],
      ),
    );
  }
}
