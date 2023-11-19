import 'dart:math' as math;

import 'package:dikara_core/dikara_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:report_book/src/presentation/features/home/navbar_menu_teacher_widget.dart';
import 'package:report_book/src/presentation/features/tasks/bloc/task_list/task_list_cubit.dart';
import 'package:report_book/src/presentation/features/tasks/bloc/tasks_class/tasks_class_cubit.dart';
import 'package:report_book/src/presentation/features/tasks/bloc/tasks_student/tasks_student_cubit.dart';
import 'package:report_book/src/presentation/routers/router.dart';

part '_fab_create_student_widget.dart';

part '_task_content_list_widget.dart';

@RoutePage()
class TaskScreenPage extends StatefulWidget {
  const TaskScreenPage({
    @QueryParam() this.isEnableCreateAndEdit = true,
    @QueryParam() this.reportReadOnly = false,
    @QueryParam() this.studentId,
    @QueryParam() this.isStudent = false,
  });

  final bool isEnableCreateAndEdit;
  final bool reportReadOnly;
  final String? studentId;
  final bool isStudent;

  @override
  State<TaskScreenPage> createState() => _TaskScreenPageState();
}

class _TaskScreenPageState extends State<TaskScreenPage>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  late final bool isEnableCreateAndEdit;
  late final bool reportReadOnly;
  late final TasksClassCubit tasksClassMapelCubit;
  late final TasksClassCubit tasksClassAkhlakCubit;
  late final TasksStudentCubit tasksStudentCubit;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    isEnableCreateAndEdit = widget.isEnableCreateAndEdit;
    reportReadOnly = widget.reportReadOnly;
    tasksClassMapelCubit =
        TasksClassCubit.crateTasksMapel(isStudent: widget.isStudent);
    tasksClassAkhlakCubit =
        TasksClassCubit.createAkhlak(isStudent: widget.isStudent);
    tasksStudentCubit = TasksStudentCubit.create(
      studentId: widget.studentId,
      isStudent: widget.isStudent,
    );
  }

  @override
  void dispose() {
    tasksClassMapelCubit.close();
    tasksClassAkhlakCubit.close();
    tasksStudentCubit.close();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Siswa'),
        leading: AutoRouter.of(context).canPop() && isEnableCreateAndEdit
            ? IconButton(
                onPressed: () => AutoRouter.of(context).pop(),
                icon: const Icon(Icons.arrow_back),
              )
            : null,
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              text: 'Hafalan',
            ),
            Tab(
              text: 'Mapel',
            ),
            Tab(
              text: 'Akhlak',
            )
          ],
        ),
      ),
      drawer: isEnableCreateAndEdit ? const NavBarMenuTeacherWidget() : null,
      body: TabBarView(
        controller: _tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          BlocProvider<TaskListCubit>.value(
            value: tasksStudentCubit,
            child: _TaskContentListWidget(isEnableCreateAndEdit),
          ),
          BlocProvider<TaskListCubit>.value(
            value: tasksClassMapelCubit,
            child: _TaskContentListWidget(isEnableCreateAndEdit),
          ),
          BlocProvider<TaskListCubit>.value(
            value: tasksClassAkhlakCubit,
            child: _TaskContentListWidget(isEnableCreateAndEdit),
          ),
        ],
      ),
      floatingActionButton: _FabCreateStudentWidget(
        isEnableCreateAndEdit: isEnableCreateAndEdit,
      ),
    );
  }
}
