import 'dart:async';

import 'package:dikara_core/dikara_core.dart' show ResourceState;
import 'package:report_book/src/di/injection_container.dart';
import 'package:report_book_core/report_book_core.dart';
import 'package:rxdart/rxdart.dart';

class StudentListBloc {
  final UserRepository _userRepository;

  final _studentsState = PublishSubject<ResourceState<List<UserModel>>>();

  late StreamSubscription<List<UserModel>> _subscription;

  StudentListBloc(this._userRepository);

  factory StudentListBloc.create() => StudentListBloc(
        inject.get(),
      ).._init();

  void _init() {
    _subscription = _userRepository.watchUserRelations().listen(
        (event) => _studentsState.add(ResourceState.success(data: event)));
  }

  Stream<ResourceState<List<UserModel>>> watchState() => _studentsState.stream;

  void onClose() {
    _studentsState.close();
    _subscription.cancel();
  }
}
