import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _LoginInitialState;

  const factory LoginState.loading() = _LoginLoadingState;

  const factory LoginState.student() = LoginSuccessStudentState;

  const factory LoginState.teacher() = LoginSuccessTeacherState;

  const factory LoginState.notFoundUser() = LoginNotFoundUserState;

  const factory LoginState.error() = LoginErrorState;
}
