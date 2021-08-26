import '../../../core/widgets/header.dart';
import '../../../core/widgets/back-arrow-widget.dart';
import '../models/profile-widgets.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/theme/theme.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  // static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme().primaryBackground,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                Header(
                  leadingIcon: BackArrowButton(),
                  appBarText: 'Profile',
                ),
                SizedBox(
                  height: 35.0,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar_1.png'),
                  radius: 52.0,
                ),
                SizedBox(
                  height: 22.0,
                ),
                Text(
                  'Kawsar Ahmed',
                  style: TextStyle(
                    color: AppTheme().secondaryText,
                    fontSize: 29.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Kawsarui.ux@gmail.com',
                  style: TextStyle(
                    color: AppTheme().primaryText,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 53.0,
                ),
                for (var profileWidget in profileWidgets)
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: AppTheme().tertiaryUI,
                    ),
                    margin: EdgeInsets.only(bottom: 16.0),
                    child: ListTile(
                      leading: Image.asset(profileWidget.imageUrl),
                      title: Text(
                        profileWidget.title,
                        style: TextStyle(
                          color: AppTheme().primaryText,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      trailing: profileWidget.widget,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
