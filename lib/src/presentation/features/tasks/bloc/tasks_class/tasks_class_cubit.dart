import 'dart:async';

import 'package:dikara_core/dikara_core.dart';
import 'package:report_book/src/presentation/features/tasks/bloc/task_list/task_list_cubit.dart';
import 'package:report_book_core/report_book_core.dart';

class TasksClassCubit extends TaskListCubit {
  final bool _isStudent;
  final StudentRepository _studentRepository;
  final UserRepository _userRepository;

  TasksClassCubit(
    super.classRepository,
    super.taskTypeModel,
    this._isStudent,
    this._studentRepository,
    this._userRepository,
  );

  factory TasksClassCubit.createAkhlak({bool isStudent = false}) {
    return TasksClassCubit(
      inject.get(),
      TaskTypeModel.akhlak,
      isStudent,
      inject.get(),
      inject.get(),
    )..onListenTasks();
  }

  factory TasksClassCubit.crateTasksMapel({bool isStudent = false}) {
    return TasksClassCubit(inject.get(), TaskTypeModel.mapel, isStudent,
        inject.get(), inject.get())
      ..onListenTasks();
  }

  @override
  FutureOr<String> getIdUser() async {
    if (_isStudent) {
      final teacherId = await _studentRepository.getStudentTeacherId();
      return teacherId;
    } else {
      return _userRepository.getUserSession;
    }
  }
}
