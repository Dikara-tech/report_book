import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:report_book/src/di/injection_container.dart';
import 'package:report_book_core/report_book_core.dart';

part 'task_list_state.dart';

part 'task_list_cubit.freezed.dart';

class TaskListCubit extends Cubit<TaskListState> {
  final TaskRepository _taskRepository;
  final String? studentId;
  StreamSubscription<List<TaskModel>>? _streamSubscription;

  TaskListCubit(this._taskRepository, this.studentId)
      : super(TaskListState.create());

  factory TaskListCubit.create({String? studentId}) =>
      TaskListCubit(inject.get(), studentId)..onListenTasks();

  void onListenTasks() {
    _streamSubscription?.cancel();
    _streamSubscription =
        _taskRepository.watchTaskUser(studentId).listen((event) {
      emit(state.copyWith(isLoading: false, tasks: event));
    });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
