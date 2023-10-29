import 'package:dikara_core/dikara_core.dart';
import 'package:report_book_core/report_book_core.dart';

class EditTaskCubit extends Cubit<ResourceState<void>> {
  final ClassRepository classRepository;

  EditTaskCubit(this.classRepository) : super(const ResourceState.initial());

  factory EditTaskCubit.create() => EditTaskCubit(inject.get());

  Future<void> updateCheckBox(String taskId, bool isCheck) async {
    try {
      emit(const ResourceState.loading());
      await classRepository.updateCheckBoxTask(taskId, isCheck);
      emit(const ResourceState.success(data: null));
    } catch (error) {
      emit(const ResourceState.error());
    }
  }

  Future<void> deleteTask(String taskID) async {
    try {
      emit(const ResourceState.loading());
      await classRepository.deleteTask(taskID);
      emit(const ResourceState.success(data: null));
    } catch (error) {
      emit(const ResourceState.error());
    }
  }
}
