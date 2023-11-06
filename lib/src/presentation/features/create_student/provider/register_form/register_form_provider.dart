import 'package:flutter/cupertino.dart';
import 'package:report_book_core/report_book_core.dart';

class RegisterFormProvider extends ChangeNotifier {
  UserModel _userModel;

  String? _errorTextName;

  String? _errorTextEmail;

  RegisterFormProvider(this._userModel);

  factory RegisterFormProvider.create({
    String? userId,
    String? name,
    String? email,
  }) =>
      RegisterFormProvider(
        UserModel(
          id: userId ?? '0',
          name: name ?? '',
          userType: UserType.student,
          email: email ?? '',
        ),
      );

  String? get errorText => _errorTextName;

  String? get errorTextEmail => _errorTextEmail;

  UserModel get userModel => _userModel;

  void changeName(String name) {
    _userModel = _userModel.copyWith(name: name);
  }

  void changeEmail(String email) {
    _userModel = _userModel.copyWith(email: email);
  }

  bool _validateNameForm() {
    if (_userModel.name.isEmpty) {
      _errorTextName = 'fill the blank';
      notifyListeners();
      return false;
    }

    if (_userModel.email.isEmpty) {
      _errorTextEmail = 'fill the blank';
      notifyListeners();
      return false;
    }

    return true;
  }

  bool get validateForm => _validateNameForm();
}
