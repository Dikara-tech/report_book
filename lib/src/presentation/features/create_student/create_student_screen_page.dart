import 'package:dikara_core/dikara_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:report_book/src/presentation/features/create_student/bloc/input_student/input_student_cubit.dart';
import 'package:report_book/src/presentation/features/create_student/provider/register_form/register_form_provider.dart';
import 'package:report_book/src/widgets/custom_button_widget.dart';
import 'package:report_book/src/widgets/custom_text_field_widget.dart';
import 'package:report_book_core/report_book_core.dart';

part '_button_submit_widget.dart';

part '_text_name_widget.dart';

part '_text_email_widget.dart';

@RoutePage()
class CreateStudentScreenPage extends StatelessWidget {
  const CreateStudentScreenPage({
    @QueryParam() this.isRegisterPage = true,
    @QueryParam() this.userId,
    @QueryParam() this.name,
    @QueryParam() this.email,
  });

  final bool isRegisterPage;
  final String? userId;
  final String? email;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Student'),
      ),
      body: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => RegisterFormProvider(
              name,
              email,
            ),
          ),
          BlocProvider(
            create: (context) => InputStudentCubit.create(isRegisterPage),
          ),
        ],
        child: _RegisterFormContentWidget(
          isRegister: isRegisterPage,
          idUser: userId,
        ),
      ),
    );
  }
}

class _RegisterFormContentWidget extends StatelessWidget {
  const _RegisterFormContentWidget({
    this.isRegister = false,
    this.idUser,
  });

  final bool isRegister;
  final String? idUser;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocListener<InputStudentCubit, ResourceState<void>>(
      listener: (context, state) => state.maybeWhen(
        success: (code, message, data) => AutoRouter.of(context).pop(),
        error: (code, message, stacktrace, data) => SnackBar(
          backgroundColor: Colors.black,
          content: Text(
            'Oops something wrong',
            style: theme.textTheme.bodySmall?.copyWith(
              color: Colors.white,
            ),
          ),
        ),
        orElse: () => null,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const _TextEmailWidget(),
            const _TextNameWidget(),
            _ButtonSubmitWidget(
              isRegister: isRegister,
              idUser: idUser,
            ),
          ],
        ),
      ),
    );
  }
}
