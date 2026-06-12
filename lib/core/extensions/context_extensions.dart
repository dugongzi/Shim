import 'package:flutter/material.dart';
import 'package:codex_z/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

extension BuildContextExtensions on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;

  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  bool get isEnglish => Localizations.localeOf(this).languageCode == 'en';

  bool get isChinese => Localizations.localeOf(this).languageCode == 'zh';

  bool get isDark => Theme.of(this).brightness == Brightness.dark;

  double get screenWidth => MediaQuery.of(this).size.width;

  double get screenHeight => MediaQuery.of(this).size.height;

  String get location => GoRouterState.of(this).matchedLocation;

  String get languageCode => Localizations.localeOf(this).languageCode;

  bool get isZh => Localizations.localeOf(this).languageCode == 'zh';

  bool get isEn => Localizations.localeOf(this).languageCode == 'en';
}
