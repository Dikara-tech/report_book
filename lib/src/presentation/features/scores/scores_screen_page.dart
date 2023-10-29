import 'package:auto_route/annotations.dart';
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
    @PathParam() required this.studentId,
    @QueryParam() this.isTeacher = false,
    @QueryParam() this.nameStudent,
  });

  final String studentId;
  final bool isTeacher;
  final String? nameStudent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scores ${nameStudent ?? 'Student'} List'),
      ),
      body: BlocProvider(
        create: (context) => ScoresListCubit.create(studentId),
        child: const _ScoresStudentWidget(),
      ),
      floatingActionButton:
          _FabButtonWidget(isTeacher: isTeacher, studentId: studentId),
    );
  }
}
