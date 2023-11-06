import 'package:bloc/bloc.dart';
import 'package:dikara_core/dikara_core.dart';
import 'package:report_book_core/report_book_core.dart';

class CreateTaskCubit extends Cubit<ResourceState<void>> {
  final TaskRepository _taskRepository;

  CreateTaskCubit(this._taskRepository) : super(const ResourceState.initial());

  factory CreateTaskCubit.create() => CreateTaskCubit(inject.get());

  Future<void> crateTask(TaskModel taskModel) async {
    try {
      emit(const ResourceLoading());
      final newTaskModel = taskModel.copyWith(
        createdAt: DateTime.now().millisecondsSinceEpoch,
      );
      await _taskRepository.createTask(newTaskModel);
      emit(const ResourceSuccess(data: null));
    } catch (error) {
      emit(const ResourceError());
    }
  }

  Future<void> updateTask(TaskModel taskModel) async {
    try {
      emit(const ResourceLoading());
    } catch (e) {
      emit(const ResourceError());
    }
  }
}
