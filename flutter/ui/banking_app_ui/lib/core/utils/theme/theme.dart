import 'package:flutter/material.dart';

enum ThemeElement { background, ui, text }
enum ThemeVariant { primary, secondary, tertiary, quaternary }

class AppTheme {
  static const Map<ThemeElement, Map<ThemeVariant, Color>> _colors = {
    ThemeElement.background: {
      ThemeVariant.primary: Color(0xFF161730),
      ThemeVariant.secondary: Color(0xFF6059BD),
      ThemeVariant.tertiary: Color(0xFF222446),
    },
    ThemeElement.ui: {
      ThemeVariant.primary: Color.fromRGBO(63, 61, 155, 1),
      ThemeVariant.secondary: Color.fromRGBO(108, 108, 201, 1),
      ThemeVariant.tertiary: Color.fromRGBO(32, 34, 68, 1),
      ThemeVariant.quaternary: Color.fromRGBO(108, 108, 201, 0.5),
    },
    ThemeElement.text: {
      ThemeVariant.primary: Color(0xFFFFFFFF),
      ThemeVariant.secondary: Color(0xFFA898F6),
      ThemeVariant.tertiary: Color(0xFF5ACCF9),
    }
  };

  Color? get primaryBackground =>
      _colors[ThemeElement.background]![ThemeVariant.primary];
  Color? get secondaryBackground =>
      _colors[ThemeElement.background]![ThemeVariant.secondary];
  Color? get tertiaryBackground =>
      _colors[ThemeElement.background]![ThemeVariant.tertiary];
  Color? get primaryUI => _colors[ThemeElement.ui]![ThemeVariant.primary];
  Color? get secondaryUI => _colors[ThemeElement.ui]![ThemeVariant.secondary];
  Color? get tertiaryUI => _colors[ThemeElement.ui]![ThemeVariant.tertiary];
  Color? get quaternaryUI => _colors[ThemeElement.ui]![ThemeVariant.quaternary];
  Color? get primaryText => _colors[ThemeElement.text]![ThemeVariant.primary];
  Color? get secondaryText =>
      _colors[ThemeElement.text]![ThemeVariant.secondary];
  Color? get tertiaryText => _colors[ThemeElement.text]![ThemeVariant.tertiary];
}
