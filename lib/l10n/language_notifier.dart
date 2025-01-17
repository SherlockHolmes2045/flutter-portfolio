import 'package:flutter/material.dart';

class LanguageNotifier extends ChangeNotifier {
  Locale _appLocale = const Locale('en');

  Locale get appLocale => _appLocale;

  // TODO(sherlock): shouldn't rebuild if the language didn't changed
  void changeLanguage(String languageCode) {
    if (languageCode.toLowerCase() == 'fr') {
      _appLocale = Locale(languageCode);
    } else {
      _appLocale = const Locale('en');
    }
    notifyListeners();
  }
}
