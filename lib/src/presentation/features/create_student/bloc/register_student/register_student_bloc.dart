import 'package:dikara_core/dikara_core.dart';
import 'package:report_book_core/report_book_core.dart';
import 'package:rxdart/rxdart.dart';

class RegisterStudentBloc {
  final UserRepository _userRepository;

  final _registerState = PublishSubject<ResourceState<void>>();

  RegisterStudentBloc(this._userRepository);

  factory RegisterStudentBloc.create() => RegisterStudentBloc(inject.get());

  Stream<ResourceState<void>> get watchRegisterSubmit => _registerState.stream;

  Future<void> submit(UserModel userModel) async {
    try {
      _registerState.add(const ResourceLoading());
      await _userRepository.createUser(userModel);
      _registerState.add(const ResourceSuccess(data: null));
    } catch (error) {
      _registerState.add(const ResourceState.error());
    }
  }

  void onClose() {
    _registerState.close();
  }
}
