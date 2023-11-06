part of 'navbar_menu_teacher_provider.dart';

@freezed
class NavBarMenuState with _$NavBarMenuState {
  const factory NavBarMenuState.student() = NavBarMenuStateStudent;

  const factory NavBarMenuState.report() = NavBarMenuStateReport;

  const factory NavBarMenuState.message() = NavBarMenuStateMessage;

  const factory NavBarMenuState.task() = NavBarMenuStateTask;

  const factory NavBarMenuState.announcement() = NavBarMenuStateAnnouncement;

  const factory NavBarMenuState.profile() = NavBarMenuStateProfile;
}
