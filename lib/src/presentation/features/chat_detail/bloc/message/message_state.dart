part of 'message_cubit.dart';

@freezed
class MessageState with _$MessageState {
  const factory MessageState({
    required bool isLoading,
    required List<MessageModel> messages,
    required bool isError,
  }) = _MessageState;

  factory MessageState.defaultState() => const MessageState(
        isLoading: false,
        messages: <MessageModel>[],
        isError: false,
      );
}
