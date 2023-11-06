import 'package:flutter/cupertino.dart';

class CheckBoxProvider extends ValueNotifier<bool> {
  CheckBoxProvider(super.value);

  void changeCheckBox(bool checkBoxValue) {
    value = checkBoxValue;
  }
}
