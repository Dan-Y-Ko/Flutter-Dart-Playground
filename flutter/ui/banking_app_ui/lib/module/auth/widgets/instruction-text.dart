import 'package:banking_app_ui/core/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class InstructionText extends StatelessWidget {
  const InstructionText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: AppTheme().fontWeights[1],
          fontSize: AppTheme().fontSizes[7],
          color: AppTheme().primaryText,
          height: 1.7,
        ),
      ),
    );
  }
}
