import 'package:flutter/material.dart';

import '../../../core/utils/theme/theme.dart';

class ContactsRow extends StatelessWidget {
  const ContactsRow({
    Key? key,
    required this.avatarUrl,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String avatarUrl;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.0),
      child: ListTile(
        contentPadding: EdgeInsets.only(right: 20.0),
        leading: Image.asset(avatarUrl),
        title: Text(
          title,
          style: TextStyle(
            color: AppTheme().primaryText,
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            color: AppTheme().primaryText,
            fontSize: 11.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
