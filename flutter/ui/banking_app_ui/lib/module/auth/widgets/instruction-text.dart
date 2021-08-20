import 'package:flutter/material.dart';

import '../../../core/utils/theme/theme.dart';

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
          fontWeight: FontWeight.w400,
          fontSize: 16.0,
          color: AppTheme().primaryText,
          height: 1.7,
        ),
      ),
    );
  }
}
