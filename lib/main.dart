import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/global_variables.dart';
import 'package:portfolio/home_page.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/project_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    usePathUrlStrategy();
  }
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
          builder: (context, child) => ResponsiveBreakpoints.builder(
            breakpoints: [
              const Breakpoint(start: 0, end: 450, name: MOBILE),
              const Breakpoint(start: 451, end: 800, name: TABLET),
              const Breakpoint(start: 801, end: 1920, name: DESKTOP),
              const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
            ],
            child: child!,
          ),
          locale: languageModel.appLocale,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          initialRoute: '/',
          onGenerateInitialRoutes: (initialRoute) {
            final uri = Uri.parse(initialRoute);
            return [
              buildPage(path: uri.path, queryParams: uri.queryParameters),
            ];
          },
          onGenerateRoute: (RouteSettings settings) {
            final uri = Uri.parse(settings.name ?? '/');
            return buildPage(path: uri.path, queryParams: uri.queryParameters);
          },
        );
      },
    );
  }

  // onGenerateRoute route switcher.
  // Navigate using the page name, `Navigator.pushNamed(context, ListPage.name)`.
  Route<dynamic> buildPage({
    required String path,
    Map<String, String> queryParams = const {},
  }) {
    return PageRouteBuilder(
      settings: RouteSettings(
        name: (path.startsWith('/') == false) ? '/$path' : path,
      ),
      pageBuilder: (context, animation, secondaryAnimation) {
        final pathName =
            path != '/' && path.startsWith('/') ? path.substring(1) : path;
        return switch (pathName) {
          '/' => const HomePage(),
          '/projects' => const ResponsiveBreakpoints(
              breakpoints: [
                Breakpoint(start: 0, end: 480, name: MOBILE),
                Breakpoint(start: 481, end: 1200, name: TABLET),
                Breakpoint(start: 1201, end: double.infinity, name: DESKTOP),
              ],
              child: ProjectPage(),
            ),
          _ => const SizedBox.shrink(),
        };
      },
    );
  }
}
