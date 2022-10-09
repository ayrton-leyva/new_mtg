import 'package:flutter/src/widgets/container.dart';
import 'package:mtg/GUI/ChooseType.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:mtg/Services/Globals.dart' as globals;
// import 'package:google_mobile_ads/google_mobile_ads.dart';
// ca-app-pub-2443681598063662/7488107899

class BasicTile {
  int title;
  List<BasicTile> list;
  BasicTile({
    required this.title,
    this.list = const [],
  });
}

class ChooseType extends StatefulWidget {
  ChooseType({super.key});

  @override
  State<ChooseType> createState() => _ChooseTypeState();
}

class _ChooseTypeState extends State<ChooseType> {
  var choosen = 4;
  var chooser = <BasicTile>[
    BasicTile(title: 4, list: [
      BasicTile(title: 1),
      BasicTile(title: 2),
      BasicTile(title: 3),
      BasicTile(title: 4),
      BasicTile(title: 5),
      BasicTile(title: 6),
      BasicTile(title: 7),
      BasicTile(title: 8),
    ])
  ];
  // Test Pubblicita
  // final BannerAd myBanner = BannerAd(
  //   adUnitId: "ca-app-pub-3940256099942544/6300978111",
  //   size: AdSize.banner,
  //   request: AdRequest(),
  //   listener: BannerAdListener(),
  // );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // myBanner.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 7, 19, 99),
      backgroundColor: Color.fromARGB(255, 209, 204, 204),
      body: ListView(
        children: chooser.map(buildTile).toList(),
      ),
    );
  }

  Widget buildTile(BasicTile tile) {
    if (tile.list.isEmpty) {
      return ListTile(
        title: Text(tile.title.toString()),
        onTap: () {
          setState(() {
            chooser[0].title = tile.title;
            globals.number_of_players = tile.title;
          });
        },
      );
    } else {
      return ExpansionTile(
        title: Text(tile.title.toString()),
        children: tile.list.map((tile) => buildTile(tile)).toList(),
      );
    }
  }
}
