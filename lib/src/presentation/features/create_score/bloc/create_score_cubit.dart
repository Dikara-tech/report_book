import 'package:dikara_core/dikara_core.dart';
import 'package:report_book_core/report_book_core.dart';

class CreateScoreCubit extends Cubit<ResourceState<void>> {
  final StudentRepository _studentRepository;
  final String studentId;

  CreateScoreCubit(this._studentRepository, this.studentId)
      : super(const ResourceState.initial());

  factory CreateScoreCubit.create(String studentId) => CreateScoreCubit(
        inject.get(),
        studentId,
      );

  Future<void> submitScore(List<ScoreModel> scores, String title) async {
    try {
      emit(const ResourceLoading());
      final scoreKeyId = await _studentRepository.createScoreStudent(
        studentId,
        scores,
        title,
      );
      if (scoreKeyId != null) {
        emit(const ResourceSuccess(data: null));
      } else {
        emit(const ResourceError());
      }
    } catch (error) {
      emit(const ResourceError());
    }
  }
}
