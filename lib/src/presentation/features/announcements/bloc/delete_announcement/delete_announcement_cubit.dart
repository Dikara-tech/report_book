import 'package:dikara_core/dikara_core.dart';
import 'package:report_book_core/report_book_core.dart';

class DeleteAnnouncementCubit extends Cubit<ResourceState<void>> {
  final AnnouncementRepository _announcementRepository;

  DeleteAnnouncementCubit(this._announcementRepository)
      : super(const ResourceState.initial());

  factory DeleteAnnouncementCubit.create() =>
      DeleteAnnouncementCubit(inject.get());

  Future<void> deleteAnnouncement(String announcementId) async {
    try {
      emit(const ResourceState.loading());
      await _announcementRepository.deleteAnnouncement(announcementId);
      emit(const ResourceState.success(data: null));
    } catch (error) {
      emit(const ResourceState.error());
    }
  }
}
