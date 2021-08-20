import 'package:banking_app_ui/core/utils/theme/theme.dart';
import 'package:banking_app_ui/module/home/models/features.dart';
import 'package:flutter/material.dart';

class FeaturesList extends StatelessWidget {
  const FeaturesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (var i = 0; i < features.length; i++)
            Column(
              children: [
                Container(
                  width: 63.0,
                  height: 63.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: AppTheme().tertiaryUI,
                  ),
                  child: Image.asset(features[i].logo),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  features[i].title,
                  style: TextStyle(
                    color: AppTheme().primaryText,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
        ],
      ),
    );
  }
}
