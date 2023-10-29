import 'dart:async';

import 'package:dikara_core/dikara_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:report_book_core/report_book_core.dart';

part 'scores_list_state.dart';

part 'scores_list_cubit.freezed.dart';

class ScoresListCubit extends Cubit<ScoresListState> {
  final String studentId;
  final StudentRepository _studentRepository;
  StreamSubscription<List<StudyModel>>? _streamSubscription;

  ScoresListCubit(this.studentId, this._studentRepository)
      : super(ScoresListState.create());

  factory ScoresListCubit.create(String studentId) =>
      ScoresListCubit(studentId, inject.get())..onListen();

  void onListen() {
    _streamSubscription =
        _studentRepository.watchStudyForStudent(studentId).listen((event) {
      emit(state.copyWith(scores: event));
    });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
