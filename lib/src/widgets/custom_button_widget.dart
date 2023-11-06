import 'package:dikara_core/dikara_core.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.titleButton,
    this.onAction,
  });

  final String titleButton;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: GoButton(
        text: titleButton,
        textStyle: theme.textTheme.titleMedium
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold) ??
            const TextStyle(),
        onPressed: onAction,
      ),
    );
  }
}
