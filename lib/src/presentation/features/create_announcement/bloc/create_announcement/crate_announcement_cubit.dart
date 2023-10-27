import 'package:dikara_core/dikara_core.dart';
import 'package:report_book_core/report_book_core.dart';

class CrateAnnouncementCubit extends Cubit<ResourceState<void>> {
  final UserRepository _userRepository;
  final AnnouncementRepository _announcementRepository;

  CrateAnnouncementCubit(this._userRepository, this._announcementRepository)
      : super(const ResourceState.initial());

  factory CrateAnnouncementCubit.create() =>
      CrateAnnouncementCubit(inject.get(), inject.get());

  Future<void> createAnnouncement(
      String title, String announcementDetail) async {
    try {
      emit(const ResourceLoading());
      final classId = await _userRepository.getIdMemberClassUser();
      if (classId != null) {
        await _announcementRepository.createAnnouncement(
          classId,
          title,
          announcementDetail,
        );
        emit(const ResourceSuccess(data: null));
      } else {
        emit(const ResourceError(message: 'class id not found'));
      }
    } catch (error) {
      emit(const ResourceError());
    }
  }
}
