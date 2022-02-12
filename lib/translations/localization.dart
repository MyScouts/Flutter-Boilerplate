import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_demo/translations/i18n/en.dart';
import 'package:flutter_demo/translations/i18n/vi.dart';

class Localization extends Translations {
  static final langCodes = [
    'en',
    'vi',
  ];
  static final locales = [
    const Locale('en', 'EN'),
    const Locale('vi', 'VN'),
  ];
  static const defaultLocale = Locale('vi', 'VN');
  static const String defaultLanguage = 'vi';

  @override
  Map<String, Map<String, String>> get keys => {
        'en': en,
        'vi': vi,
      };
}
