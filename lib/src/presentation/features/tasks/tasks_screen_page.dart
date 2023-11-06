import 'package:dikara_core/dikara_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:report_book/src/presentation/features/home/navbar_menu_teacher_widget.dart';
import 'package:report_book/src/presentation/features/tasks/bloc/task_list/task_list_cubit.dart';
import 'package:report_book/src/presentation/routers/router.dart';

part '_task_content_list_widget.dart';

part '_fab_create_student_widget.dart';

@RoutePage()
class TaskScreenPage extends StatelessWidget {
  const TaskScreenPage({
    @QueryParam() this.isTeacher = true,
    @QueryParam() this.studentId,
  });

  final bool isTeacher;
  final String? studentId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Task'),
        leading: AutoRouter.of(context).canPop() && isTeacher
            ? IconButton(
                onPressed: () => AutoRouter.of(context).pop(),
                icon: const Icon(Icons.arrow_back),
              )
            : null,
      ),
      drawer: isTeacher ? const NavBarMenuTeacherWidget() : null,
      body: MultiBlocProvider(
        providers: [
          Provider(
              create: (context) => TaskListCubit.create(studentId: studentId)),
        ],
        child: _TaskContentListWidget(isTeacher),
      ),
      floatingActionButton: _FabCreateStudentWidget(isTeacher: isTeacher),
    );
  }
}
