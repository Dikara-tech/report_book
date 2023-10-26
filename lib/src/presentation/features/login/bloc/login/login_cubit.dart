import 'package:bloc/bloc.dart';
import 'package:report_book/src/di/injection_container.dart';
import 'package:report_book/src/presentation/features/login/bloc/login/login_state.dart';
import 'package:report_book_core/report_book_core.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthenticationRepository _authenticationRepository;

  LoginCubit(this._authenticationRepository)
      : super(const LoginState.initial());

  factory LoginCubit.create() => LoginCubit(inject.get());

  Future<void> submitLogin(String userId) async {
    try {
      emit(const LoginState.loading());
      final userType = await _authenticationRepository.signIn(userId);
      _userTypeLogin(userType);
    } catch (error) {
      emit(const LoginState.error());
    }
  }

  void _userTypeLogin(UserType? usertype) {
    switch (usertype) {
      case UserType.student:
        emit(const LoginState.student());
      case UserType.teacher:
        emit(const LoginState.teacher());
      default:
        emit(const LoginState.notFoundUser());
    }
  }
}
