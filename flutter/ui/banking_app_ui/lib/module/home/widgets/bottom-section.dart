import 'package:banking_app_ui/core/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          color: AppTheme().tertiaryBackground,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 23.0, vertical: 21.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Today, 25 June',
                      style: TextStyle(
                        color: AppTheme().secondaryText,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '\$210.02',
                      style: TextStyle(
                        color: AppTheme().secondaryText,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
