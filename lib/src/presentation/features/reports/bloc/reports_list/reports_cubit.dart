import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:report_book/src/di/injection_container.dart';
import 'package:report_book_core/report_book_core.dart';

part 'reports_state.dart';

part 'reports_cubit.freezed.dart';

class ReportsCubit extends Cubit<ReportsState> {
  final TaskRepository _taskRepository;
  StreamSubscription<List<ScoreModel>>? _streamSubscriptionScoreReport;

  ReportsCubit(this._taskRepository) : super(ReportsState.create());

  factory ReportsCubit.create() => ReportsCubit(inject.get())..onListen();

  void onListen() {
    _streamSubscriptionScoreReport?.cancel();
    _streamSubscriptionScoreReport =
        _taskRepository.watchScoreByTeacher().listen((event) {
      emit(state.copyWith(isLoading: false, scores: event));
    });
  }

  @override
  Future<void> close() {
    _streamSubscriptionScoreReport?.cancel();
    return super.close();
  }
}
