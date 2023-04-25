import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tbilisi_cycling/pages/bikemappage.dart';
import 'package:tbilisi_cycling/pages/homepage.dart';
import 'package:tbilisi_cycling/pages/settingspage.dart';
import 'package:tbilisi_cycling/pages/guidepage.dart';

class Layout extends StatefulWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const BikeMapPage(),
    const GuidePage(),
    const SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: AppLocalizations.of(context)!.home,

          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.map),
              label: AppLocalizations.of(context)!.map,

          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.menu_book_sharp),
            label: AppLocalizations.of(context)!.guide,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: AppLocalizations.of(context)!.settings,
          )
        ],
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
