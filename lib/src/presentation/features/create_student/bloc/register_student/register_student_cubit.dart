import 'package:dikara_core/dikara_core.dart';
import 'package:report_book_core/report_book_core.dart';

class RegisterStudentCubit extends Cubit<ResourceState<void>> {
  final UserRepository _userRepository;

  RegisterStudentCubit(this._userRepository) : super(const ResourceState.initial());

  factory RegisterStudentCubit.create() => RegisterStudentCubit(inject.get());

  Future<void> submit(UserModel userModel) async {
    try {
      emit(const ResourceLoading());
      await _userRepository.createUser(userModel);
      emit(const ResourceSuccess(data: null));
    } catch (error) {
      emit(const ResourceState.error());
    }
  }
}
