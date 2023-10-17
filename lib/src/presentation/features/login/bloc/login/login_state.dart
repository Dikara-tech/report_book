import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _LoginInitialState;

  const factory LoginState.loading() = _LoginLoadingState;

  const factory LoginState.success() = _LoginSuccessState;

  const factory LoginState.error() = _LoginErrorState;
}
