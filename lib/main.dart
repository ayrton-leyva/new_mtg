import 'package:flutter/material.dart';
import 'package:mtg/GUI/CoinFlip.dart';
import 'package:mtg/GUI/Dadi.dart';
import 'package:mtg/GUI/Opening.dart';
import 'package:mtg/GUI/SegnaPunti.dart';
import 'package:mtg/GUI/ChooseType.dart';
import 'package:mtg/GUI/Settings.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      brightness: Brightness.light,
    ),
    onGenerateRoute: (settings) {
      late Widget page;
      if (settings.name == '/') {
        page = OpeningPage();
      } else if (settings.name == '/ChooseType') {
        page = ChooseType();
      } else if (settings.name == '/SegnaPunti') {
        page = SegnaPunti();
      } else if (settings.name == '/Settings') {
        page = Settings();
      } else if (settings.name == '/Dadi') {
        page = Dadi();
      } else if (settings.name == '/CoinFlip') {
        page = CoinFlip();
      } else {
        throw Exception('Unkown route:${settings.name}');
      }

      return MaterialPageRoute<dynamic>(
        builder: (context) {
          return page;
        },
        settings: settings,
      );
    },
    debugShowCheckedModeBanner: false,
  ));
}
