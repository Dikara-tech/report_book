import 'dart:async';

import 'package:dikara_core/dikara_core.dart';
import 'package:report_book/src/presentation/features/tasks/bloc/task_list/task_list_cubit.dart';
import 'package:report_book_core/report_book_core.dart';

class TasksStudentCubit extends TaskListCubit {
  final UserRepository _userRepository;
  final String? studentId;
  final bool isStudent;

  TasksStudentCubit(
    super.classRepository,
    super.taskTypeModel,
    this._userRepository, {
    this.studentId,
    this.isStudent = false,
  });

  factory TasksStudentCubit.create(
          {bool isStudent = false, String? studentId}) =>
      TasksStudentCubit(
        inject.get(),
        TaskTypeModel.hafalan,
        inject.get(),
        isStudent: isStudent,
        studentId: studentId,
      )..onListenTasks();

  @override
  FutureOr<String> getIdUser() {
    if (isStudent) return _userRepository.getUserSession;
    final studentId = this.studentId;
    if (studentId != null) return studentId;

    return _userRepository.getUserSession;
  }
}
