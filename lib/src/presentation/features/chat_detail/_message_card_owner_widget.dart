part of 'chat_detail_screen_page.dart';

class _MessageCardOwnerWidget extends StatelessWidget {
  const _MessageCardOwnerWidget({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final sizeWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: sizeWidth,
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.only(right: 16.0, top: 16.0),
          child: SizedBox(
            width: (sizeWidth * 0.7) - 16.0,
            child: Card(
              color: theme.colorScheme.surfaceTint,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  message,
                  style: theme.textTheme.bodySmall?.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
