import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:report_book/src/di/injection_container.dart';
import 'package:report_book_core/report_book_core.dart';

part 'message_state.dart';

part 'message_cubit.freezed.dart';

class MessageCubit extends Cubit<MessageState> {
  final ChatRepository _chatRepository;
  final String _receiverId;
  String? _chatId;

  StreamSubscription<List<MessageModel>>? _streamSubscription;

  MessageCubit(this._chatRepository, this._receiverId, this._chatId)
      : super(MessageState.defaultState());

  factory MessageCubit.create(String receiverId, String? chatId) {
    return MessageCubit(
      inject.get(),
      receiverId,
      chatId,
    ).._onListen();
  }

  Future<void> addMessage(String message) async {
    try {
      final chatId = _chatId;
      if (chatId != null) {
        await _chatRepository.addMessage(chatId, message, _receiverId);
      } else {
        final resultChatId =
            await _chatRepository.createChat(_receiverId, message);
        _chatId = resultChatId;
        _onListen();
      }
    } catch (error) {
      emit(state.copyWith(isError: true));
    }
  }

  void _onListen() {
    _streamSubscription?.cancel();
    final chatid = _chatId;
    if (chatid != null) {
      _streamSubscription = _chatRepository.watchMessage(chatid).listen(
        (event) {
          emit(state.copyWith(messages: event));
        },
      );
    }
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
