import 'package:flutter/material.dart';

import '../../l10n/generated/proxo_localizations.dart';
import 'dark/dark_theme_data.dart';
import 'light/light_theme_data.dart';

enum ProxoTheme {
  dark,
  light,
}

extension ProxoThemeExtension on ProxoTheme {
  static final labelToEnumMap = {
    ProxoTheme.dark.name: ProxoTheme.dark,
    ProxoTheme.light.name: ProxoTheme.light,
  };

  static final themeDataMap = {
    ProxoTheme.dark: darkThemeData,
    ProxoTheme.light: lightThemeData,
  };

  static ProxoTheme formString(String text) {
    return labelToEnumMap[text] ?? ProxoTheme.light;
  }

  String getLocalizedName(BuildContext context) {
    final themeToNameMap = {
      ProxoTheme.light: ProxoLocalizations.of(context)!.light,
      ProxoTheme.dark: ProxoLocalizations.of(context)!.dark,
    };
    return themeToNameMap[this]!;
  }

  ThemeData get themeData => themeDataMap[this]!;
}
