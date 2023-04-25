import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GuidePage extends StatelessWidget {
  const GuidePage({Key? key}) : super(key: key);

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
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 14),
                      child: Text(
                        AppLocalizations.of(context)!.guideTitle,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.redAccent,
                      thickness: 2,
                    ),
                    Text(
                      AppLocalizations.of(context)!.guideText,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    )
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
          padding: const EdgeInsets.all(32.0),
          color: Colors.redAccent,
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 14),
                      child: Text(
                        AppLocalizations.of(context)!.guideTitle1,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.white,
                      thickness: 2,
                    ),
                    Text(
                      AppLocalizations.of(context)!.guideText1,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Image.asset("assets/images/bike-helmet.png",
                        width: 200, height: 200),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    AppLocalizations.of(context)!.scroll,
                    style: const TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(32.0),
          color: Colors.blueAccent,
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 14),
                      child: Text(
                        AppLocalizations.of(context)!.guideTitle2,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.white,
                      thickness: 2,
                    ),
                    Text(
                      AppLocalizations.of(context)!.guideText2,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Image.asset("assets/images/traffic-light.png",
                        width: 200, height: 200),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    AppLocalizations.of(context)!.scroll,
                    style: const TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(32.0),
          color: Colors.white,
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 14),
                      child: Text(
                        AppLocalizations.of(context)!.guideTitle3,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.deepPurple,
                      thickness: 2,
                    ),
                    Text(
                      AppLocalizations.of(context)!.guideText3,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.deepPurple,
                      ),
                    ),
                    Image.asset("assets/images/hand-signal.png",
                        width: 200, height: 200),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    AppLocalizations.of(context)!.scroll,
                    style: const TextStyle(color: Colors.black),
                  )),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(32.0),
          color: Colors.greenAccent,
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 14),
                      child: Text(
                        AppLocalizations.of(context)!.guideTitle4,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: 2,
                    ),
                    Text(
                      AppLocalizations.of(context)!.guideText4,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    Image.asset("assets/images/bike-light.png",
                        width: 200, height: 200),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    AppLocalizations.of(context)!.scroll,
                    style: const TextStyle(color: Colors.black),
                  )),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(32.0),
          color: Colors.amber,
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 14),
                      child: Text(
                        AppLocalizations.of(context)!.guideTitle5,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.white,
                      thickness: 2,
                    ),
                    Text(
                      AppLocalizations.of(context)!.guideText5,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Image.asset("assets/images/position.png",
                        width: 200, height: 200),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    AppLocalizations.of(context)!.scroll,
                    style: const TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(32.0),
          color: Colors.pinkAccent,
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 14),
                      child: Text(
                        AppLocalizations.of(context)!.guideTitle6,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.white,
                      thickness: 2,
                    ),
                    Text(
                      AppLocalizations.of(context)!.guideText6,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Image.asset("assets/images/dog.png",
                        width: 200, height: 200),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    AppLocalizations.of(context)!.scroll,
                    style: const TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(32.0),
          color: Colors.deepPurpleAccent,
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 14),
                      child: Text(
                        AppLocalizations.of(context)!.guideTitle7,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.white,
                      thickness: 2,
                    ),
                    Text(
                      AppLocalizations.of(context)!.guideText7,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Image.asset("assets/images/bike-route.png",
                        width: 200, height: 200),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    AppLocalizations.of(context)!.scroll,
                    style: const TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 14),
                  child: Text(
                    AppLocalizations.of(context)!.guideTitle8,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Divider(
                  thickness: 2,
                ),
                Text(
                  AppLocalizations.of(context)!.guideText8,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                Image.asset("assets/images/safe.png", width: 200, height: 200),
              ],
            ),
          ),
        )
      ],
    );
  }
}
