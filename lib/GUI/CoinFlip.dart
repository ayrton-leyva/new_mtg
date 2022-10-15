import 'package:flutter/material.dart';

class CoinFlip extends StatefulWidget {
  const CoinFlip({super.key});

  @override
  State<CoinFlip> createState() => _CoinFlipState();
}

class _CoinFlipState extends State<CoinFlip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color.fromARGB(255, 7, 19, 99),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Center(
          child: Text("CoinFlip"),
        ));
  }
}
