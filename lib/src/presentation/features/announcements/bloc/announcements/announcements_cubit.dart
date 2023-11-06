import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:report_book/src/di/injection_container.dart';
import 'package:report_book_core/report_book_core.dart';

part 'announcements_state.dart';

part 'announcements_cubit.freezed.dart';

class AnnouncementsCubit extends Cubit<AnnouncementsState> {
  final AnnouncementRepository _announcementRepository;
  StreamSubscription<List<AnnouncementModel>>? _streamSubscription;

  AnnouncementsCubit(this._announcementRepository)
      : super(AnnouncementsState.defaultState());

  factory AnnouncementsCubit.create() => AnnouncementsCubit(inject.get());

  Future<void> getAnnouncements() async {
    try {
      emit(state.copyWith(isLoading: true));
      final classId = await _announcementRepository.getIdMemberClassUser();
      if (classId != null) {
        _onListen(classId);
      } else {
        emit(state.copyWith(isError: true));
      }
    } catch (error) {
      emit(state.copyWith(isError: true));
    }
  }

  void _onListen(String classId) {
    _streamSubscription?.cancel();
    _streamSubscription =
        _announcementRepository.watchAnnouncement(classId).listen((event) {
      emit(state.copyWith(isLoading: false, announcements: event));
    });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
