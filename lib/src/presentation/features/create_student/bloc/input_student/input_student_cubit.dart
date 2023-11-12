import 'package:dikara_core/dikara_core.dart';
import 'package:report_book_core/report_book_core.dart';

class InputStudentCubit extends Cubit<ResourceState<void>> {
  final UserRepository _userRepository;
  final TaskRepository _taskRepository;

  InputStudentCubit(this._userRepository, this._taskRepository)
      : super(const ResourceState.initial());

  factory InputStudentCubit.create() => InputStudentCubit(
        inject.get(),
        inject.get(),
      );

  Future<void> register(String name, String email) async {
    try {
      final registerModel = UserModel.create(name, UserType.student, email);
      emit(const ResourceLoading());
      await _userRepository.createUser(registerModel, true);
      emit(const ResourceSuccess(data: null));
    } catch (error) {
      emit(const ResourceState.error());
    }
  }

  Future<void> updateUser(UserModel userModel) async {
    try {
      emit(const ResourceLoading());
      await _userRepository.updateNameUser(userModel);
      await _taskRepository.changeScoreName(userModel.id, userModel.name);
      emit(const ResourceSuccess(data: null));
    } catch (error) {
      emit(const ResourceState.error());
    }
  }
}
