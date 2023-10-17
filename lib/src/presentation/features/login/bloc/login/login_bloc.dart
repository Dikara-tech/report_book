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

  Future<void> submitLogin(String email, String password) async {
    try {
      _publishSubject.add(const LoginState.loading());
      await _authenticationRepository.login(email: email, password: password);
      _publishSubject.add(const LoginState.success());
    } catch (error) {
      _publishSubject.add(const LoginState.error());
    }
  }

  void close() {
    _publishSubject.close();
  }
}
