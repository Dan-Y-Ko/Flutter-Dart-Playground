import 'package:flutter/material.dart';

import 'package:banking_app_ui/core/utils/theme/theme.dart';
import 'package:banking_app_ui/module/home/models/contacts.dart';

class NotificationSection extends StatelessWidget {
  const NotificationSection({
    Key? key,
    required this.day,
  }) : super(key: key);

  final String day;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          day,
          style: TextStyle(
            color: AppTheme().primaryText,
            fontSize: 20.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 17.0,
        ),
        for (Contacts contact in contactsList)
          Container(
            height: 70.0,
            margin: EdgeInsets.only(bottom: 17.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: AppTheme().tertiaryUI,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 19.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, bottom: 18.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(contact.avatarUrl),
                    ),
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: '${contact.name.split(' ')[0]} ',
                          style: TextStyle(
                            color: AppTheme().primaryText,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                          children: [
                            TextSpan(
                              text: 'started following you.',
                              style: TextStyle(
                                color: AppTheme().primaryText,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '02 minutes ago.',
                        style: TextStyle(
                          color: AppTheme().primaryText,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
