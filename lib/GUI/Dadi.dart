import 'package:flutter/material.dart';

class Dadi extends StatefulWidget {
  const Dadi({super.key});

  @override
  State<Dadi> createState() => _DadiState();
}

class _DadiState extends State<Dadi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color.fromARGB(255, 7, 19, 99),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Center(
          child: Text("Dadi"),
        ));
  }
}
