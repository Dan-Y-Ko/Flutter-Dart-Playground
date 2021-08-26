import 'package:flutter/material.dart';

import '../../../core/utils/theme/theme.dart';

class TopupInput extends StatelessWidget {
  const TopupInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search Name or Number',
          hintStyle: TextStyle(
            color: AppTheme().primaryText,
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: AppTheme().primaryText,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppTheme().primaryText!,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppTheme().primaryText!,
            ),
          ),
        ),
      ),
    );
  }
}
