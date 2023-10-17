import 'package:report_book/src/presentation/features/login/bloc/form/login_form_state.dart';
import 'package:rxdart/rxdart.dart';

class LoginForm {
  final _emailForm = PublishSubject<String>();

  final _password = PublishSubject<String>();

  String _emailText = '';

  String get emailText => _emailText;

  String _passwordText = '';

  String get passwordText => _passwordText;

  Stream<LoginFormState?> get watchError => _emailForm.stream
          .debounceTime(const Duration(milliseconds: 100))
          .map((event) {
        if (event.isEmpty) return const LoginFormState.empty();
        return null;
      });

  Stream<LoginFormState?> get watchErrorPassword => _password.stream
          .debounceTime(const Duration(milliseconds: 100))
          .map((event) {
        if (event.isEmpty) return const LoginFormState.empty();
        return null;
      });

  Stream<bool> get watchStatusForm => CombineLatestStream.combine2(
        _emailForm.stream,
        _password.stream,
        (emailStream, passwordStream) {
          print(emailStream);
          print(passwordStream);
          return emailStream.isNotEmpty && passwordStream.isNotEmpty;
        },
      );

  void onSetEmail(String email) {
    _emailText = email;
    _emailForm.add(email);
  }

  void onSetPassword(String password) {
    _passwordText = password;
    _password.add(password);
  }

  void onClose() {
    _emailForm.close();
    _password.close();
  }
}
