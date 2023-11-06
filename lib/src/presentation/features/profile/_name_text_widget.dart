part of 'profile_screen_page.dart';

class _ProfileNameWidget extends StatelessWidget {
  const _ProfileNameWidget({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Text(
        text,
        style:
            theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
      ),
    );
  }
}
