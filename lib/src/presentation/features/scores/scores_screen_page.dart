import 'package:dikara_core/dikara_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:report_book/src/presentation/features/scores/bloc/scores_list/scores_list_cubit.dart';
import 'package:report_book/src/presentation/routers/router.dart';

part '_fab_button_widget.dart';

part '_scores_student_widget.dart';

@RoutePage()
class ScoresScreenPage extends StatelessWidget {
  const ScoresScreenPage({
    @QueryParam() this.isTeacher = false,
    @QueryParam() this.studentId,
    @QueryParam() this.nameStudent,
  });

  final bool isTeacher;
  final String? studentId;
  final String? nameStudent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scores ${nameStudent ?? 'Student'} List'),
      ),
      body: BlocProvider(
        create: (context) {
          final studentId = this.studentId;
          if (isTeacher && studentId != null) {
            return ScoresListCubit.createForTeacher(studentId);
          }
          return ScoresListCubit.createForStudent();
        },
        child: const _ScoresStudentWidget(),
      ),
      floatingActionButton: _FabButtonWidget(
        isTeacher: isTeacher,
        studentId: studentId,
      ),
    );
  }
}
