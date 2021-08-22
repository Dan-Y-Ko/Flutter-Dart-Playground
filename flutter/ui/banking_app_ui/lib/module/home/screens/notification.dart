import 'package:banking_app_ui/core/utils/theme/theme.dart';
import 'package:banking_app_ui/core/widgets/header.dart';
import 'package:banking_app_ui/module/auth/widgets/back-arrow-widget.dart';
import 'package:banking_app_ui/module/home/models/contacts.dart';
import 'package:banking_app_ui/module/home/widgets/notification-section.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  static const routeName = '/notification';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme().primaryBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Header(
                leadingIcon: BackArrowButton(),
                appBarText: 'Notification',
              ),
              SizedBox(
                height: 28.0,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      NotificationSection(day: 'Today'),
                      NotificationSection(day: 'Yesterday'),
                      NotificationSection(day: 'Friday'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
