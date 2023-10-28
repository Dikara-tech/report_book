import 'package:flutter/foundation.dart';
import 'package:report_book_core/report_book_core.dart';

class FormListScores extends ChangeNotifier {
  String? _textTitle;

  final _idScoreModel = <String>{};

  final _itemForm = <ScoreModel>[];

  List<ScoreModel> get formList => _itemForm;

  String get titleText => _textTitle ?? '';

  set onChangeTextTitle(String text) {
    _textTitle = text;
  }

  void onAddItem(ScoreModel scoreModel) {
    final idKey = scoreModel.idKey;
    if (idKey != null && !_idScoreModel.contains(scoreModel.idKey)) {
      _idScoreModel.add(idKey);
      _itemForm.add(scoreModel);
      notifyListeners();
    }
  }

  void onChangeScoreItem(int indexScoreModel, String score) {
    final scoreModel = _itemForm[indexScoreModel].copyWith(
      score: int.parse(score),
    );
    _itemForm[indexScoreModel] = scoreModel;
    notifyListeners();
  }
}
