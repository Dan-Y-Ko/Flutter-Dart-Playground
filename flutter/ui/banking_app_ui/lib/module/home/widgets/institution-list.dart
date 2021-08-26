import '../../../core/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class InstitutionList extends StatelessWidget {
  const InstitutionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ListTile(
          leading: Image.asset(
            'assets/images/institution_icon.png',
            height: 41.0,
          ),
          title: Text(
            'NID Service',
            style: TextStyle(
              color: AppTheme().primaryText,
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text(
            'Govt Fee',
            style: TextStyle(
              color: AppTheme().primaryText,
              fontSize: 11.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Divider(
          color: AppTheme().tertiaryUI,
          thickness: 3.0,
        )
      ],
    );
  }
}
