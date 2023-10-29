import 'package:dikara_core/dikara_core.dart';
import 'package:report_book_core/report_book_core.dart';

class InputStudentCubit extends Cubit<ResourceState<void>> {
  final UserRepository _userRepository;
  final bool isRegister;

  InputStudentCubit(this._userRepository, this.isRegister)
      : super(const ResourceState.initial());

  factory InputStudentCubit.create(bool isRegister) =>
      InputStudentCubit(inject.get(), isRegister);

  Future<void> submit(UserModel userModel) {
    if (isRegister) {
      return _register(userModel);
    } else {
      return _updateUser(userModel);
    }
  }

  Future<void> _register(UserModel userModel) async {
    try {
      emit(const ResourceLoading());
      await _userRepository.createUser(userModel, true);
      emit(const ResourceSuccess(data: null));
    } catch (error) {
      emit(const ResourceState.error());
    }
  }

  Future<void> _updateUser(UserModel userModel) async {
    try {
      emit(const ResourceLoading());
      await _userRepository.updateUser(userModel);
      emit(const ResourceSuccess(data: null));
    } catch (error) {
      emit(const ResourceState.error());
    }
  }
}
