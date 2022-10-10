import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mtg/Services/Players.dart';

class Mana_counters extends StatefulWidget {
  Mana_counters({
    required this.text_color,
    required this.backGround,
    required this.height,
    required this.width,
    required this.player,
  });
  final Player player;
  final Color text_color;
  final Color backGround;
  final double height;
  final double width;

  @override
  State<Mana_counters> createState() => _Mana_countersState();
}

class _Mana_countersState extends State<Mana_counters> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: widget.backGround,
        ),
        Positioned(
          // Vedere come fare
          right: 20,
          bottom: 20,
          child: Text("Mana Counters",
              style: TextStyle(
                  fontSize: 17,
                  color: widget.text_color,
                  decoration: TextDecoration.none)),
        ),
      ],
    );
  }
}
