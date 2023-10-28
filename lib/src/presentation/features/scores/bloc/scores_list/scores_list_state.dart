part of 'scores_list_cubit.dart';

@freezed
class ScoresListState with _$ScoresListState {
  const factory ScoresListState({
    required bool isLoading,
    required List<StudyModel> scores,
    required bool isError,
  }) = _ScoresListState;

  factory ScoresListState.create() => const ScoresListState(
        isLoading: false,
        scores: [],
        isError: false,
      );
}
