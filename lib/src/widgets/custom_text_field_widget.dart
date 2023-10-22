import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    this.textEditingController,
    this.hintText,
    this.errorText,
    this.onChange,
    this.maxLines = 1,
    this.textInputType,
    this.isReadOnly = false,
    this.onTapTextField,
  });

  final TextEditingController? textEditingController;
  final String? hintText;
  final String? errorText;
  final ValueChanged<String>? onChange;
  final int maxLines;
  final TextInputType? textInputType;
  final bool isReadOnly;
  final VoidCallback? onTapTextField;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextField(
      controller: textEditingController,
      onChanged: onChange,
      maxLines: maxLines,
      keyboardType: textInputType,
      readOnly: isReadOnly,
      onTap: onTapTextField,
      decoration: InputDecoration(
        hintText: hintText,
        errorText: errorText,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color: theme.colorScheme.onSurfaceVariant,
            width: 0.5,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color: theme.colorScheme.error,
            width: 0.5,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color: theme.colorScheme.error,
            width: 0.5,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color: theme.colorScheme.onSurfaceVariant,
            width: 0.5,
          ),
        ),
      ),
    );
  }
}
