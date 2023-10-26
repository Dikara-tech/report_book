part of 'chat_screen_page.dart';

class _ChatContentsWidget extends StatelessWidget {
  const _ChatContentsWidget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatsCubit, ChatsState>(
      builder: (context, state) {
        return ListView.separated(
          itemCount: state.chats.length,
          separatorBuilder: (context, index) => const Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0),
          ),
          itemBuilder: (context, index) => _CardCardWidget(
            chatId: state.chats[index].chatId,
            senderId: state.chats[index].senderId,
            name: state.chats[index].title,
            messageChat: state.chats[index].message,
          ),
        );
      },
    );
  }
}
