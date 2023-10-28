import 'package:bloc/bloc.dart';
import 'package:dikara_core/dikara_core.dart';
import 'package:report_book_core/report_book_core.dart';

class ScoreDetailCubit extends Cubit<ResourceState<List<ScoreModel>>> {
  final StudentRepository _scoreApiResource;
  final String scoreId;

  ScoreDetailCubit(this._scoreApiResource, this.scoreId)
      : super(const ResourceState.initial());

  factory ScoreDetailCubit.create(String studentId) =>
      ScoreDetailCubit(inject.get(), studentId)..getScoreDetail();

  Future<void> getScoreDetail() async {
    try {
      emit(const ResourceLoading());
      final scores = await _scoreApiResource.getScoreById(scoreId);
      emit(ResourceSuccess(data: scores));
    } catch (error) {
      emit(const ResourceError());
    }
  }
}
