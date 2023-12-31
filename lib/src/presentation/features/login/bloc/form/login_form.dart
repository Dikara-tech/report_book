import 'package:report_book/src/presentation/features/login/bloc/form/login_form_state.dart';
import 'package:rxdart/rxdart.dart';

class LoginForm {
  final _userId = PublishSubject<String>();

  String _userIdText = '';

  String get userIdText => _userIdText;

  Stream<LoginFormState?> get watchError => _userId.stream
          .debounceTime(const Duration(milliseconds: 100))
          .map((event) {
        if (event.isEmpty) return const LoginFormState.empty();
        return null;
      });

  Stream<bool> get watchStatusForm => watchError.map((event) => event != null);

  void onSetEmail(String email) {
    _userIdText = email;
    _userId.add(email);
  }

  void onClose() {
    _userId.close();
  }
}
