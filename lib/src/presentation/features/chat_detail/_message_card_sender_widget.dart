part of 'chat_detail_screen_page.dart';

class _MessageCardSenderWidget extends StatelessWidget {
  const _MessageCardSenderWidget({
    required this.messageText,
  });

  final String messageText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final sizeWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: sizeWidth,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 16.0),
          child: SizedBox(
            width: (sizeWidth * 0.7) - 16.0,
            child: Card(

              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  messageText,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
