import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _LoginInitialState;

  const factory LoginState.loading() = _LoginLoadingState;

  const factory LoginState.student() = _LoginSuccessStudentState;

  const factory LoginState.teacher() = _LoginSuccessTeacherState;

  const factory LoginState.notFoundUser() = _LoginNotFoundUserState;

  const factory LoginState.error() = _LoginErrorState;
}
