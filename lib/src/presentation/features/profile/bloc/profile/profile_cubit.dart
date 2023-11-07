import 'package:dikara_core/dikara_core.dart';
import 'package:report_book_core/report_book_core.dart';

class ProfileCubit extends Cubit<ResourceState<UserModel>> {
  final UserRepository userRepository;

  ProfileCubit(this.userRepository) : super(const ResourceState.initial());

  factory ProfileCubit.create() => ProfileCubit(inject.get())..getProfile();

  Future<void> getProfile() async {
    try {
      emit(const ResourceLoading());
      final profile = await userRepository.getUser();
      if (profile != null) {
        emit(ResourceSuccess(data: profile));
      }
    } catch (error) {
      emit(const ResourceError());
    }
  }
}
