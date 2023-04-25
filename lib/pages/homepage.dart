import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: MediaQuery.of(context).size.height - 70,
          width: MediaQuery.of(context).size.width - 70,
          padding: const EdgeInsets.all(32.0),
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/logo.png",
                        width: 200, height: 200),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        "Tbilisi Cycling",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(AppLocalizations.of(context)!.scroll)),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.redAccent,
          padding: const EdgeInsets.all(32.0),
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Linkify(
                      text: AppLocalizations.of(context)!.aboutText1(
                          "https://github.com/LevaniVashadze/tbilisi_cycling"),
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                      onOpen: (link) async {
                        await launchUrlString(link.url,
                            mode: LaunchMode.externalApplication);
                      },
                    ),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(AppLocalizations.of(context)!.scroll, style: const TextStyle(color: Colors.white),)),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.yellow,
          padding: const EdgeInsets.all(32.0),
          child: Stack(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.disclaimer,
                        style: const TextStyle(fontSize: 20, color: Colors.pinkAccent),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "${AppLocalizations.of(context)!.finalNotes}\n${AppLocalizations.of(context)!.staySafe}",
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.pinkAccent),
                  ),
                )
              ],
            ),
        ),
      ],
    );
  }
}
