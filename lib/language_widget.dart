import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/global_variables.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utils.dart';

class LanguageWidget extends StatefulWidget {
  const LanguageWidget({super.key});

  @override
  State<LanguageWidget> createState() => _LanguageWidgetState();
}

class _LanguageWidgetState extends State<LanguageWidget> {
  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: languageModel,
      builder: (context, child) {
        return Column(
          children: AppLocalizations.supportedLocales
              .map(
                (locale) => InkWell(
                  onTap: () =>
                      languageModel.changeLanguage(locale.languageCode),
                  child: Text(
                    locale.languageCode.capitalize(),
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      decoration: languageModel.appLocale.languageCode ==
                              locale.languageCode
                          ? TextDecoration.underline
                          : TextDecoration.none,
                      decorationColor: grey,
                      color: languageModel.appLocale.languageCode ==
                              locale.languageCode
                          ? white
                          : grey,
                    ),
                  ),
                ),
              )
              .toList(),
        );
      },
    );
  }
}
