import 'package:dikara_core/dikara_core.dart';
import 'package:flutter/material.dart';
import 'package:report_book/src/presentation/features/create_student/bloc/register_student/register_student_bloc.dart';
import 'package:report_book/src/presentation/features/create_student/provider/register_form/register_form_provider.dart';
import 'package:report_book/src/widgets/custom_button_widget.dart';
import 'package:report_book/src/widgets/custom_text_field_widget.dart';
import 'package:report_book_core/report_book_core.dart';

part '_button_submit_widget.dart';

part '_text_name_widget.dart';

@RoutePage()
class CreateStudentScreenPage extends StatelessWidget {
  const CreateStudentScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Student'),
      ),
      body: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => RegisterFormProvider()),
          Provider(create: (context) => RegisterStudentBloc.create())
        ],
        child: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _TextNameWidget(),
              _ButtonSubmitWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
