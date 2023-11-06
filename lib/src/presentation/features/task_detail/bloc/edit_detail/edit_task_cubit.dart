import 'package:dikara_core/dikara_core.dart';
import 'package:report_book_core/report_book_core.dart';

class EditTaskCubit extends Cubit<ResourceState<void>> {
  final String studentId;
  final String taskId;
  final TaskRepository taskRepository;

  EditTaskCubit(
    this.taskId,
    this.studentId,
    this.taskRepository,
  ) : super(const ResourceState.initial());

  factory EditTaskCubit.create({
    required String studentId,
    required String taskId,
  }) {
    return EditTaskCubit(
      taskId,
      studentId,
      inject.get(),
    );
  }

  Future<void> changeStatusTask(bool isDone, TaskTypeModel typeModel) async {
    try {
      emit(const ResourceState.loading());
      final taskModel = TaskModel.createUpdateCheckBox(
        studentId: studentId,
        taskId: taskId,
        isDone: isDone,
        typeModel: typeModel,
      );
      await taskRepository.updateCheckBoxTask(studentId, taskModel);
      emit(const ResourceState.success(data: null));
    } catch (error) {
      emit(const ResourceState.error());
    }
  }

  Future<void> deleteTask() async {
    try {
      emit(const ResourceState.loading());
      await taskRepository.deleteTask(taskId, studentId);
      emit(const ResourceState.success(data: null));
    } catch (e) {
      emit(const ResourceState.error());
    }
  }
}
