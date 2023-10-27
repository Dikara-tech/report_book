part of 'announcements_cubit.dart';

@freezed
class AnnouncementsState with _$AnnouncementsState {
  const factory AnnouncementsState({
    required bool isLoading,
    required List<AnnouncementModel> announcements,
    required bool isError,
  }) = _AnnouncementsState;

  factory AnnouncementsState.defaultState() => const AnnouncementsState(
        isLoading: true,
        announcements: [],
        isError: false,
      );
}
