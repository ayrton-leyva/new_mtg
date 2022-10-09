import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color.fromARGB(255, 7, 19, 99),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Center(
          child: Text("Settings"),
        ));
  }
}
