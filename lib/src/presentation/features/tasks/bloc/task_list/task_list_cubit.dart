import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:report_book/src/di/injection_container.dart';
import 'package:report_book_core/report_book_core.dart';

part 'task_list_state.dart';

part 'task_list_cubit.freezed.dart';

class TaskListCubit extends Cubit<TaskListState> {
  final ClassRepository _classRepository;
  final UserRepository _userRepository;
  StreamSubscription<List<TaskModel>>? _streamSubscription;

  TaskListCubit(
    this._classRepository,
    this._userRepository,
  ) : super(TaskListState.create());

  factory TaskListCubit.create() =>
      TaskListCubit(inject.get(), inject.get())..onListenTasks();

  Future<void> onListenTasks() async {
    try {
      emit(state.copyWith(isLoading: true));
      final userClassId = await _userRepository.getIdMemberClassUser();
      if (userClassId != null) {
        emit(state.copyWith(isLoading: false));
        _onListen(userClassId);
      } else {
        emit(state.copyWith(isLoading: false, isError: true));
      }
    } catch (error) {
      emit(state.copyWith(isLoading: false, isError: true));
    }
  }

  void _onListen(String classId) {
    _streamSubscription?.cancel();
    _streamSubscription =
        _classRepository.watchTaskClassGroup(classId).listen((event) {
      emit(state.copyWith(tasks: event));
    });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
