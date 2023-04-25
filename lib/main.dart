import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tbilisi_cycling/layout.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;
  String localeName = 'en';


  void loadThemeMode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var mode = prefs.getString('theme');
    if (mode == 'light') {
      changeTheme(ThemeMode.light);
    } else if (mode == 'dark') {
      changeTheme(ThemeMode.dark);
    } else {
      changeTheme(ThemeMode.system);
    }
  }

  void loadLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var language = prefs.getString('language');
    if (language == 'de') {
      changeLanguage('de');
    } else if (language == 'ka') {
      changeLanguage('ka');
    } else if (language == 'en') {
      changeLanguage('en');
    } else {
      changeLanguage('system');
    }
  }

  @override
  void initState() {
    super.initState();
    loadThemeMode();
    loadLanguage();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tbilisi Cycling',
        locale: localeName == 'de' ? const Locale('de') : localeName == 'ka' ? const Locale('ka') : localeName == "en" ? const Locale('en') : null,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: ThemeData(
          brightness: Brightness.light,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        themeMode: _themeMode,
        home: const Layout()
    );
  }
  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  void changeLanguage(String language) {
    setState(() {
      localeName = language;
    });
  }

}


