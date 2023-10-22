import 'package:flutter/cupertino.dart';

class RegisterFormProvider extends ChangeNotifier {
  String? _name;

  String? _errorTextName;

  String? get errorText => _errorTextName;

  String get name => _name ?? '';

  set name(String name) => _name = name;

  bool _validateNameForm() {
    if (_name == null && (_name?.isEmpty ?? false)) {
      _errorTextName = 'fill the blank';
      notifyListeners();
      return false;
    }

    return true;
  }

  bool get validateForm => _validateNameForm();
}
