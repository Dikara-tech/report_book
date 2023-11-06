part of 'task_list_cubit.dart';

@freezed
class TaskListState with _$TaskListState {
  const factory TaskListState({
    required bool isLoading,
    required List<TaskModel> tasks,
    required bool isError,
  }) = _TaskListState;

  factory TaskListState.create() => const TaskListState(
        isLoading: true,
        tasks: [],
        isError: false,
      );
}
