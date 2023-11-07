import 'package:dikara_core/dikara_core.dart';
import 'package:report_book_core/report_book_core.dart';

class ProfileClassCubit extends Cubit<ResourceState<UserModel>> {
  final UserRepository userRepository;

  ProfileClassCubit(this.userRepository) : super(const ResourceState.initial());

  factory ProfileClassCubit.create() =>
      ProfileClassCubit(inject.get())..getProfile();

  Future<void> getProfile() async {
    try {
      emit(const ResourceState.loading());
      final userModel = await userRepository.getUser();
      if (userModel != null) {
        emit(ResourceState.success(data: userModel));
      }
    } catch (error) {
      emit(const ResourceState.error());
    }
  }
}
