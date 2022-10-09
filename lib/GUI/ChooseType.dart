import 'package:flutter/src/widgets/container.dart';
import 'package:mtg/GUI/ChooseType.dart';
import 'package:flutter/material.dart';
import 'dart:io';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
// ca-app-pub-2443681598063662/7488107899

class ChooseType extends StatefulWidget {
  const ChooseType({super.key});

  @override
  State<ChooseType> createState() => _ChooseTypeState();
}

class _ChooseTypeState extends State<ChooseType> {
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
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Center(
          child: Container(
              // child: AdWidget(
              //   ad: myBanner,
              // ),
              ),
        ));
  }
}
