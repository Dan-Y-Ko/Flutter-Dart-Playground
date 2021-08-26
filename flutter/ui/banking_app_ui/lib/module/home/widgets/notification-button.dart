import 'package:flutter/material.dart';

import '../../../core/widgets/custom-icon-button.dart';
import '../../notification/screens/notification.dart';

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
