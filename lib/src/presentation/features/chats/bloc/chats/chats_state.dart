part of 'chats_cubit.dart';

@freezed
class ChatsState with _$ChatsState {
  const factory ChatsState({
    required List<ChatModel> chats,
    required bool isError,
  }) = _ChatsState;

  factory ChatsState.initial() => const ChatsState(
        chats: <ChatModel>[],
        isError: false,
      );
}
