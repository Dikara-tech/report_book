import 'package:dikara_core/dikara_core.dart';
import 'package:report_book_core/report_book_core.dart';

class EditTaskCubit extends Cubit<ResourceState<void>> {
  final TaskRepository _taskRepository;

  EditTaskCubit(this._taskRepository) : super(const ResourceState.initial());

  factory EditTaskCubit.create() => EditTaskCubit(inject.get());

  Future<void> updateCheckBox(String studentId, TaskModel taskModel) async {
    try {
      emit(const ResourceState.loading());
      await _taskRepository.updateCheckBoxTask(studentId, taskModel);
      emit(const ResourceState.success(data: null));
    } catch (error) {
      emit(const ResourceState.error());
    }
  }

  Future<void> deleteTask(String taskID, String studentId) async {
    try {
      emit(const ResourceState.loading());
      await _taskRepository.deleteTask(taskID, studentId);
      emit(const ResourceState.success(data: null));
    } catch (error) {
      emit(const ResourceState.error());
    }
  }
}
