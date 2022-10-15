import 'package:flutter/material.dart';
import 'package:mtg/GUI/Class/Commander_tax.dart';
import 'package:mtg/GUI/Class/LifePanel.dart';
import 'package:mtg/Services/Players.dart';
import 'package:mtg/GUI/Class/Storm.dart';
import 'package:mtg/GUI/Class/Commander.dart';
import 'package:mtg/GUI/Class/Permanent_counters.dart';
import 'package:mtg/GUI/Class/Mana_counters.dart';
import 'package:mtg/Services/Globals.dart' as globals;
import 'package:mtg/GUI/Class/Single_Panel_Counter.dart';
import 'package:mtg/GUI/Class/Players/Players_variable.dart';

class Player_2_Widget extends StatelessWidget {
  const Player_2_Widget({
    Key? key,
    required PageController controller_first,
    required this.first,
    required this.h,
    required this.w,
    required PageController controller_second,
    required this.second,
  })  : _controller_first = controller_first,
        _controller_second = controller_second,
        super(key: key);

  final PageController _controller_first;
  final Player first;
  final double h;
  final double w;
  final PageController _controller_second;
  final Player second;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: RotatedBox(
            quarterTurns: -2,
            child: Two_player_Widget(
              circle: Color.fromARGB(255, 80, 79, 79),
              color_background: Color.fromARGB(255, 233, 232, 197),
              image_com: "assets/Black.svg",
              type_com: "com_black",
              image_background: "assets/White.svg",
              controller_first: _controller_first,
              second: first,
              h: h,
              w: w,
            ),
          ),
        ),
        Expanded(
          child: Two_player_Widget(
            circle: Color.fromARGB(255, 80, 79, 79),
            color_background: Color.fromARGB(255, 48, 48, 48),
            image_com: "assets/White.svg",
            type_com: "com_white",
            image_background: "assets/Black.svg",
            controller_first: _controller_second,
            second: second,
            h: h,
            w: w,
          ),
        )
      ],
    );
  }
}
