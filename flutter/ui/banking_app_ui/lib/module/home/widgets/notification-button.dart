import 'package:banking_app_ui/core/utils/theme/theme.dart';
import 'package:banking_app_ui/core/widgets/custom-icon-button.dart';
import 'package:banking_app_ui/module/home/screens/notification.dart';
import 'package:flutter/material.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
      width: 40.0,
      height: 40.0,
      asset: Image.asset('assets/images/notification_icon.png'),
      padding: EdgeInsets.zero,
      onTap: () {
        Navigator.of(context).pushNamed(NotificationScreen.routeName);
      },
      borderRadius: BorderRadius.all(
        Radius.circular(50.0),
      ),
      inkwellRadius: BorderRadius.all(
        Radius.circular(50.0),
      ),
    );
  }
}
