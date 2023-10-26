part of 'chat_screen_page.dart';

class _CardCardWidget extends StatelessWidget {
  const _CardCardWidget({
    required this.name,
    required this.messageChat,
    required this.senderId,
    this.chatId,
  });

  final String name;
  final String messageChat;
  final String senderId;
  final String? chatId;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        child: ListTile(
          onTap: () {
            AutoRouter.of(context).push(ChatDetailScreenRouter(
              senderId: senderId,
              senderName: name,
              chatId: chatId,
            ));
          },
          title: Text(name, style: theme.textTheme.titleLarge),
          subtitle: Text(
            messageChat,
            style: theme.textTheme.bodySmall,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
