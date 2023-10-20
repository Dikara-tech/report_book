import 'package:dikara_core/dikara_core.dart';
import 'package:report_book/src/presentation/features/login/bloc/login/login_state.dart';
import 'package:report_book_core/report_book_core.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc {
  final AuthenticationRepository _authenticationRepository;

  final _publishSubject = PublishSubject<LoginState>();

  LoginBloc(this._authenticationRepository);

  factory LoginBloc.create() => LoginBloc(inject.get());

  Stream<LoginState> get watchState => _publishSubject.stream;

  Future<void> submitLogin(String userId) async {
    try {
      _publishSubject.add(const LoginState.loading());
      final userType = await _authenticationRepository.signIn(userId);
      _userTypeLogin(userType);
    } catch (error) {
      _publishSubject.add(const LoginState.error());
    }
  }

  void _userTypeLogin(UserType? usertype) {
    switch (usertype) {
      case UserType.student:
        _publishSubject.add(const LoginState.student());
      case UserType.teacher:
        _publishSubject.add(const LoginState.teacher());
      default:
        _publishSubject.add(const LoginState.notFoundUser());
    }
  }

  void close() {
    _publishSubject.close();
  }
}
