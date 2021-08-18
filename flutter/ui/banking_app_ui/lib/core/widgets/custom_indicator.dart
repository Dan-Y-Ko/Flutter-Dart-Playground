import 'package:flutter/material.dart';

import '../utils/theme/theme.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({
    Key? key,
    required this.index,
    required this.data,
  }) : super(key: key);

  final int index;
  final List<dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < data.length; i++)
          i != index
              ? Container(
                  width: 11.0,
                  height: 6.0,
                  margin: EdgeInsets.only(right: 4.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: AppTheme().quaternaryUI,
                  ),
                )
              : Container(
                  width: 20.0,
                  height: 7.0,
                  margin: EdgeInsets.only(right: 4.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors: [
                        AppTheme().primaryUI!,
                        AppTheme().secondaryUI!,
                      ],
                    ),
                  ),
                ),
      ],
    );
  }
}
