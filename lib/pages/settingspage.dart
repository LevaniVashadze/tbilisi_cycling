import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tbilisi_cycling/main.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  ThemeMode currentTheme(context) => Theme.of(context).brightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(AppLocalizations.of(context)!.settings, style: Theme.of(context).textTheme.headline5),
            ListTile(
              title: Text(AppLocalizations.of(context)!.theme),
              trailing: DropdownButton<ThemeMode>(
                value: currentTheme(context),
                onChanged: (ThemeMode? value) async {
                  MyApp.of(context).changeTheme(value!);
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setString("theme", value.toString().split('.').last);
                },
                items: ThemeMode.values.map((ThemeMode themeMode) {
                  return DropdownMenuItem<ThemeMode>(
                    value: themeMode,
                    // This very long line because of the localization and since dart doesn't have the bracket thingy instead of dot notation like in python
                    child: Text(themeMode.toString().split('.').last == "system" ? AppLocalizations.of(context)!.system : themeMode.toString().split('.').last == "light" ? AppLocalizations.of(context)!.light : AppLocalizations.of(context)!.dark),
                  );
                }).toList(),
              ),
            ),
            ListTile(
              title: Text(AppLocalizations.of(context)!.language),
              trailing: DropdownButton<String>(
                value: AppLocalizations.of(context)!.localeName,
                onChanged: (String? value) async {
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setString("language", value!);
                  MyApp.of(context).changeLanguage(value);
                },
                items: AppLocalizations.supportedLocales.map((Locale locale) {
                  return DropdownMenuItem<String>(
                    value: locale.languageCode,
                    child: Text(locale.languageCode == "de" ? "Deutsch" : locale.languageCode == "ka" ? "ქართული" : "English"),
                  );
                }).toList(),
              ),
            )
          ],
        ),
    );
  }
}