import 'package:flutter/material.dart';
import 'package:mtg/GUI/CoinFlip.dart';
import 'package:mtg/GUI/Dadi.dart';
import 'package:mtg/GUI/Opening.dart';
import 'package:mtg/GUI/SegnaPunti.dart';
import 'package:mtg/GUI/ChooseType.dart';
import 'package:mtg/GUI/Settings.dart';
import 'package:mtg/Services/Globals.dart' as globals;

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
        List<bool> players = [
          false,
          false,
          false,
          false,
          false,
          false,
          false,
          false,
        ];
        switch (globals.number_of_players) {
          case 1:
            players[0] = true;
            break;
          case 2:
            players[1] = true;
            break;
          case 3:
            players[2] = true;
            break;
          case 4:
            players[3] = true;
            break;
          case 5:
            players[4] = true;
            break;
          case 6:
            players[5] = true;
            break;
          case 7:
            players[6] = true;
            break;
          case 8:
            players[7] = true;
            break;
            
          default:
            players[0] = true;
            break;
        }
        page = SegnaPunti(
          players: players,
        );
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
