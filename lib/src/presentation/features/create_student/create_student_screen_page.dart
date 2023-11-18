import 'package:dikara_core/dikara_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:report_book/src/presentation/features/create_student/bloc/delete_student/delete_student.dart';
import 'package:report_book/src/presentation/features/create_student/bloc/input_student/input_student_cubit.dart';
import 'package:report_book/src/presentation/features/create_student/provider/register_form/register_form_provider.dart';
import 'package:report_book/src/widgets/custom_button_widget.dart';
import 'package:report_book/src/widgets/custom_text_field_widget.dart';

part '_button_submit_widget.dart';

part '_text_name_widget.dart';

part '_text_email_widget.dart';

@RoutePage()
class CreateStudentScreenPage extends StatelessWidget {
  const CreateStudentScreenPage({
    @QueryParam() this.userId,
    @QueryParam() this.name,
    @QueryParam() this.email,
    @QueryParam() this.isEditStudent = false,
  });

  final String? userId;
  final String? email;
  final String? name;
  final bool isEditStudent;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => RegisterFormProvider.create(
            userId: userId,
            name: name,
            email: email,
          ),
        ),
        BlocProvider(create: (context) => InputStudentCubit.create()),
        BlocProvider(create: (context) => DeleteStudentCubit.create()),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: isEditStudent
              ? const Text('Ubah Data Siswa')
              : const Text('Buat Siswa'),
          actions: [
            if (isEditStudent && userId != null)
              _IconDeleteButton(userId: userId!)
          ],
        ),
        body: _RegisterFormContentWidget(studentId: userId),
      ),
    );
  }
}

class _RegisterFormContentWidget extends StatelessWidget {
  const _RegisterFormContentWidget({
    this.studentId,
  });

  final String? studentId;

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
              idUser: studentId,
              onTapAction: () {
                final registerProvider = context.read<RegisterFormProvider>();
                final studentId = this.studentId;
                if (registerProvider.validateForm && studentId != null) {
                  context
                      .read<InputStudentCubit>()
                      .updateUser(registerProvider.userModel);
                } else {
                  context.read<InputStudentCubit>().register(
                        registerProvider.userModel.name,
                        registerProvider.userModel.email,
                      );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _IconDeleteButton extends StatelessWidget {
  const _IconDeleteButton({required this.userId});

  final String userId;

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeleteStudentCubit, ResourceState<void>>(
      listener: (context, state) => state.maybeWhen(
        orElse: () => null,
        success: (code, message, data) => AutoRouter.of(context).pop(),
      ),
      child: IconButton(
          onPressed: () =>
              context.read<DeleteStudentCubit>().deleteUser(userId),
          icon: const Icon(Icons.delete)),
    );
  }
}
