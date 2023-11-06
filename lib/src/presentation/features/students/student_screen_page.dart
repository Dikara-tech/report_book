import 'package:dikara_core/dikara_core.dart';
import 'package:flutter/material.dart';
import 'package:report_book/src/presentation/features/home/navbar_menu_teacher_widget.dart';
import 'package:report_book/src/presentation/features/students/bloc/student_list/student_list_bloc.dart';
import 'package:report_book/src/presentation/routers/router.dart';
import 'package:report_book_core/report_book_core.dart';

part '_student_list_widget.dart';

@RoutePage()
class StudentsScreenPage extends StatelessWidget {
  const StudentsScreenPage({@QueryParam() this.isReadOnly = false});

  final bool isReadOnly;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Students')),
      drawer: const NavBarMenuTeacherWidget(),
      body: MultiProvider(
        providers: [Provider(create: (context) => StudentListBloc.create())],
        child: _StudentListWidget(isReadOnly: isReadOnly),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            AutoRouter.of(context).push(CreateStudentScreenRouter()),
        child: const Icon(Icons.add),
      ),
    );
  }
}
