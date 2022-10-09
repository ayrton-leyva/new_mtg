import 'package:flutter/material.dart';
import 'dart:io';
import 'package:mtg/Services/Globals.dart' as globals;

class OpeningPage extends StatefulWidget {
  const OpeningPage({Key? key}) : super(key: key);

  @override
  State<OpeningPage> createState() => _OpeningPageState();
}

class _OpeningPageState extends State<OpeningPage> {
  Future<void> setup(context) async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, '/SegnaPunti');
  }

  @override
  Widget build(BuildContext context) {
    setup(context);
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 7, 19, 99),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(child: Image(image: AssetImage('assets/Mtg.jpg'))),
    );
  }
}
