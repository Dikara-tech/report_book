part of 'chat_detail_screen_page.dart';

class _MessageListWidget extends StatelessWidget {
  const _MessageListWidget({super.key, required this.senderId});

  final String senderId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageCubit, MessageState>(
      builder: (context, state) => ListView.builder(
        itemCount: state.messages.length,
        itemBuilder: (context, index) {
          if (state.messages[index].senderId == senderId) {
            return _MessageCardSenderWidget(
                messageText: state.messages[index].message);
          }
          return _MessageCardOwnerWidget(
              message: state.messages[index].message);
        },
      ),
    );
  }
}
