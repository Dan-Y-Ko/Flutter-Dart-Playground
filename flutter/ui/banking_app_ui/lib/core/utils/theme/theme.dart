import 'package:flutter/material.dart';

enum ThemeElement { background, ui, text }
enum ThemeVariant { primary, secondary, tertiary, quaternary }

class AppTheme {
  // Colors
  static const Map<ThemeElement, Map<ThemeVariant, Color>> _colors = {
    ThemeElement.background: {
      ThemeVariant.primary: Color(0xFF161730),
      ThemeVariant.secondary: Color(0xFF6059BD),
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
  Color? get primaryUI => _colors[ThemeElement.ui]![ThemeVariant.primary];
  Color? get secondaryUI => _colors[ThemeElement.ui]![ThemeVariant.secondary];
  Color? get tertiaryUI => _colors[ThemeElement.ui]![ThemeVariant.tertiary];
  Color? get quaternaryUI => _colors[ThemeElement.ui]![ThemeVariant.quaternary];
  Color? get primaryText => _colors[ThemeElement.text]![ThemeVariant.primary];
  Color? get secondaryText =>
      _colors[ThemeElement.text]![ThemeVariant.secondary];
  Color? get tertiaryText => _colors[ThemeElement.text]![ThemeVariant.tertiary];
// ------------------------------------------------------------------------------------

// Font Sizes
  static const List<double> _fontSizes = [
    8.0,
    10.0,
    11.0,
    12.0,
    13.0,
    14.0,
    15.0,
    16.0,
    18.0,
    20.0,
    25.0,
    27.0,
    29.0,
    30.0
  ];

  List<double> get fontSizes => _fontSizes;

// ------------------------------------------------------------------------------------

// Font Weights
  static const List<FontWeight> _fontWeights = [
    FontWeight.w300,
    FontWeight.w400,
    FontWeight.w500,
    FontWeight.w600
  ];

  List<FontWeight> get fontWeights => _fontWeights;
// ------------------------------------------------------------------------------------

}
