import 'package:flutter/material.dart';

import '../../module/auth/widgets/back-arrow-widget.dart';
import '../utils/theme/theme.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.appBarText,
  }) : super(key: key);

  final String appBarText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BackArrowButton(),
        SizedBox(
          width: 63.0,
        ),
        Text(
          appBarText,
          style: TextStyle(
            color: AppTheme().primaryText,
            fontWeight: AppTheme().fontWeights[2],
            fontSize: AppTheme().fontSizes[8],
          ),
        ),
        Spacer(),
      ],
    );
  }
}
