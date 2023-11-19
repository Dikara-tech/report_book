import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:report_book_core/report_book_core.dart';

part 'task_list_state.dart';

part 'task_list_cubit.freezed.dart';

class TaskListCubit extends Cubit<TaskListState> {
  final ClassRepository _classRepository;
  final TaskTypeModel taskTypeModel;
  StreamSubscription<List<TaskModel>>? _streamSubscription;

  TaskListCubit(
    this._classRepository,
    this.taskTypeModel,
  ) : super(TaskListState.create());

  void onListenTasks() {
    _streamSubscription?.cancel();
    _streamSubscription = _watchTaskList().listen(
      (event) => emit(state.copyWith(isLoading: false, tasks: event)),
      onError: (Object error, StackTrace stackTrace) =>
          emit(state.copyWith(isError: true)),
      cancelOnError: true,
    );
  }

  Stream<List<TaskModel>> _watchTaskList() async* {
    final userId = await getIdUser();
    yield* _classRepository.watchTask(userId, taskTypeModel);
  }

  FutureOr<String> getIdUser() {
    return '';
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
