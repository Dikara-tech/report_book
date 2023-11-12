import 'package:bloc/bloc.dart';
import 'package:dikara_core/dikara_core.dart';
import 'package:report_book_core/report_book_core.dart';

class ProfileNameCubit extends Cubit<ResourceState<String?>> {
  final StudentRepository _studentRepository;
  final String userId;

  ProfileNameCubit(this._studentRepository, this.userId)
      : super(const ResourceState.initial());

  factory ProfileNameCubit.create({required String userId}) =>
      ProfileNameCubit(inject.get(), userId)..getProfileName();

  Future<void> getProfileName() async {
    try {
      emit(const ResourceState.loading());
      final userName = await _studentRepository.studentName(userId);
      emit(ResourceState.success(data: userName));
    } catch (error) {
      emit(const ResourceState.error());
    }
  }
}
