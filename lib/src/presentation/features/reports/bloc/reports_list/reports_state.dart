part of 'reports_cubit.dart';

@freezed
class ReportsState with _$ReportsState {
  const factory ReportsState({
    required bool isLoading,
    required bool isError,
    required List<ScoreModel> scores,
  }) = _ReportsState;

  factory ReportsState.create() =>
      const ReportsState(isLoading: true, isError: false, scores: []);
}
