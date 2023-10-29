import 'dart:async';

import 'package:dikara_core/dikara_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:report_book_core/report_book_core.dart';

part 'scores_list_state.dart';

part 'scores_list_cubit.freezed.dart';

class ScoresListCubit extends Cubit<ScoresListState> {
  String? _studentId;
  final StudentRepository _studentRepository;
  StreamSubscription<List<StudyModel>>? _streamSubscription;

  ScoresListCubit(this._studentId, this._studentRepository)
      : super(ScoresListState.create());

  factory ScoresListCubit.createForTeacher(String studentId) =>
      ScoresListCubit(studentId, inject.get())..onListen();

  factory ScoresListCubit.createForStudent() =>
      ScoresListCubit(null, inject.get())..getScoreStudentsOnce();

  Future<void> getScoreStudentsOnce() async {
    try {
      emit(state.copyWith(isLoading: true));
      final scoreList = await _studentRepository.getScoreByStudentProfile();
      emit(state.copyWith(scores: scoreList, isLoading: false));
    } catch (error) {
      emit(state.copyWith(isError: true));
    }
  }

  void onListen() {
    final studentId = _studentId;
    _streamSubscription?.cancel();
    if (studentId != null) {
      _streamSubscription =
          _studentRepository.watchStudyForStudent(studentId).listen((event) {
        emit(state.copyWith(scores: event, isLoading: false));
      });
    }
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
