import 'package:dikara_core/dikara_core.dart';
import 'package:report_book_core/report_book_core.dart';

class CrateAnnouncementCubit extends Cubit<ResourceState<void>> {
  final AnnouncementRepository _announcementRepository;

  CrateAnnouncementCubit(this._announcementRepository)
      : super(const ResourceState.initial());

  factory CrateAnnouncementCubit.create() =>
      CrateAnnouncementCubit(inject.get());

  Future<void> createAnnouncement(
      String title, String announcementDetail) async {
    try {
      emit(const ResourceLoading());
      await _announcementRepository.createAnnouncement(
          title, announcementDetail);
      emit(const ResourceSuccess(data: null));
    } catch (error) {
      emit(const ResourceError());
    }
  }
}
