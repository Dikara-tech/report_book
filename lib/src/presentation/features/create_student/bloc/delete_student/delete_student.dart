import 'package:dikara_core/dikara_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:report_book_core/report_book_core.dart';

class DeleteStudentCubit extends Cubit<ResourceState<void>> {
  final UserRepository _userRepository;

  DeleteStudentCubit(this._userRepository)
      : super(const ResourceState.initial());

  Future<void> deleteUser(String userId) async {
    try {
      emit(const ResourceLoading());
      await _userRepository.deleteUser(userId);
      emit(const ResourceSuccess(data: null));
    } catch (error) {
      emit(const ResourceError());
    }
  }
}
