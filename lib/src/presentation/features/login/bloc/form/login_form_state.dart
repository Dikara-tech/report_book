import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_form_state.freezed.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const factory LoginFormState.initial() = _LoginFormInitialState;

  const factory LoginFormState.empty() = LoginFormEmptyState;
}
