import '../../../core/utils/theme/theme.dart';
import '../screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileWidgets {
  final String imageUrl;
  final String title;
  final Widget widget;

  ProfileWidgets({
    required this.imageUrl,
    required this.title,
    required this.widget,
  });
}

List<ProfileWidgets> profileWidgets = [
  ProfileWidgets(
    imageUrl: 'assets/images/key.png',
    title: 'Password',
    widget: SvgPicture.asset('assets/images/caret_right.svg'),
  ),
  ProfileWidgets(
    imageUrl: 'assets/images/touch.png',
    title: 'Touch ID',
    widget: Switch(
      value: true,
      onChanged: (bool) {},
      activeColor: AppTheme().primaryText,
      activeTrackColor: AppTheme().secondaryUI,
    ),
  ),
  ProfileWidgets(
    imageUrl: 'assets/images/language.png',
    title: 'Language',
    widget: SvgPicture.asset('assets/images/caret_right.svg'),
  ),
  ProfileWidgets(
    imageUrl: 'assets/images/info.png',
    title: 'App Information',
    widget: SvgPicture.asset('assets/images/caret_right.svg'),
  ),
  ProfileWidgets(
    imageUrl: 'assets/images/headphones.png',
    title: 'Customer Care',
    widget: SvgPicture.asset('assets/images/caret_right.svg'),
  ),
];
