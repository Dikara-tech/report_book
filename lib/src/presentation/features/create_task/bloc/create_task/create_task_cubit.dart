import 'package:bloc/bloc.dart';
import 'package:dikara_core/dikara_core.dart';
import 'package:report_book_core/report_book_core.dart';

class CreateTaskCubit extends Cubit<ResourceState<void>> {
  final ClassRepository _classGroupRepository;

  CreateTaskCubit(this._classGroupRepository)
      : super(const ResourceState.initial());

  factory CreateTaskCubit.create() => CreateTaskCubit(inject.get());

  Future<void> crateTask(TaskModel taskModel) async {
    try {
      emit(const ResourceLoading());
      final newTaskModel = taskModel.copyWith(
        createdAt: DateTime.now().millisecondsSinceEpoch,
      );
      final responseTaskId =
          await _classGroupRepository.createTask(newTaskModel);
      if (responseTaskId != null) {
        emit(const ResourceSuccess(data: null));
      } else {
        emit(const ResourceError());
      }
    } catch (error) {
      emit(const ResourceError());
    }
  }
}
