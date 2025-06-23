

import 'dart:ui';

class S {
  final Locale locale;

  S(this.locale);

  static S? _current;

  static S get current {
    if (_current == null) {
      _current = S(const Locale('en'));
    }
    return _current!;
  }

  // 👇 أضف هذه الدالة العامة لتحديث اللغة من الخارج
  static void setLocale(Locale newLocale) {
    _current = S(newLocale);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'settings': 'Settings',
      'language': 'Language',
      'theme': 'Theme',
      'darkMode': 'Dark Mode',
      'lightMode': 'Light Mode',
      'english': 'English',
      'arabic': 'Arabic',
    },
    'ar': {
      'settings': 'الإعدادات',
      'language': 'اللغة',
      'theme': 'الوضع',
      'darkMode': 'الوضع الداكن',
      'lightMode': 'الوضع الفاتح',
      'english': 'الإنجليزية',
      'arabic': 'العربية',
    },
  };

  String get settings => _localizedValues[locale.languageCode]!['settings']!;
  String get language => _localizedValues[locale.languageCode]!['language']!;
  String get theme => _localizedValues[locale.languageCode]!['theme']!;
  String get darkMode => _localizedValues[locale.languageCode]!['darkMode']!;
  String get lightMode => _localizedValues[locale.languageCode]!['lightMode']!;
  String get english => _localizedValues[locale.languageCode]!['english']!;
  String get arabic => _localizedValues[locale.languageCode]!['arabic']!;
}