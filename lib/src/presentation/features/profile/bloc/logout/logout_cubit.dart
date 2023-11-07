import 'package:dikara_core/dikara_core.dart';
import 'package:report_book_core/report_book_core.dart';

class LogoutCubit extends Cubit<ResourceState<void>> {
  final AuthenticationRepository _authenticationRepository;

  LogoutCubit(this._authenticationRepository)
      : super(const ResourceState.initial());

  factory LogoutCubit.create() => LogoutCubit(inject.get());

  Future<void> signOut() async {
    try {
      emit(const ResourceState.loading());
      await _authenticationRepository.signOut();
      emit(const ResourceState.success(data: null));
    } catch (error) {
      emit(const ResourceState.error());
    }
  }
}
