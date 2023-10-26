import 'package:flutter/cupertino.dart';

class RegisterFormProvider extends ChangeNotifier {
  String? _name;

  String? _email;

  String? _errorTextName;

  String? _errorTextEmail;

  RegisterFormProvider(this._name, this._email);

  String? get errorText => _errorTextName;

  String? get errorTextEmail => _errorTextEmail;

  String get name => _name ?? '';

  String get email => _email ?? '';

  set name(String name) => _name = name;

  set email(String email) => _email = email;

  bool _validateNameForm() {
    if (_name == null || (_name?.isEmpty ?? false)) {
      _errorTextName = 'fill the blank';
      notifyListeners();
      return false;
    }

    if (_email == null || (_email?.isEmpty ?? false)) {
      _errorTextEmail = 'fill the blank';
      notifyListeners();
      return false;
    }

    return true;
  }

  bool get validateForm => _validateNameForm();
}
