import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/global_variables.dart';
import 'package:portfolio/home_page.dart';
import 'package:portfolio/l10n/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: languageModel,
      builder: (context, child) {
        return MaterialApp(
          title: 'Ivan Lemovou portfolio',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: white),
            fontFamily: 'FiraCode',
            textTheme: TextTheme(
              displayLarge: TextStyle(color: white),
              // For body text
              displayMedium: TextStyle(color: white),
              // For smaller body text
              displaySmall: TextStyle(color: white),
              // For large headlines
              headlineLarge: TextStyle(color: white),
              // For medium headlines
              headlineMedium: TextStyle(color: white),
              // For smaller headlines
              headlineSmall: TextStyle(color: white),
              // For smaller headlines
              titleLarge: TextStyle(color: white),
              titleSmall: TextStyle(color: white),
              titleMedium: TextStyle(color: white),
              bodyMedium: TextStyle(color: white),
              bodyLarge: TextStyle(color: white),
              bodySmall: TextStyle(color: white),
              labelLarge: TextStyle(color: white),
              labelMedium: TextStyle(color: white),
              labelSmall: TextStyle(color: white),
            ),
            useMaterial3: true,
          ),
          locale: languageModel.appLocale,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: const HomePage(),
        );
      },
    );
  }
}
