import 'package:flutter/material.dart';

import '../utils/theme/theme.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 194.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: LinearGradient(
          colors: [AppTheme().secondaryUI!, AppTheme().tertiaryUI!],
        ),
      ),
    );
  }
}
