import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:report_book/src/di/injection_container.dart';
import 'package:report_book_core/report_book_core.dart';

part 'chats_cubit.freezed.dart';
part 'chats_state.dart';

class ChatsCubit extends Cubit<ChatsState> {
  final ChatRepository _chatRepository;

  late final StreamSubscription<List<ChatModel>> _streamSubscription;

  ChatsCubit(this._chatRepository) : super(ChatsState.initial()) {
    _streamSubscription = _chatRepository.watchChat().listen((event) {
      emit(state.copyWith(chats: event));
    }, onError: (Object error, StackTrace stacktrace) {
      emit(state.copyWith(isError: true));
    });
  }

  factory ChatsCubit.create() => ChatsCubit(inject.get());

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}
