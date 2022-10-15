import 'package:flutter/material.dart';
import 'package:mtg/Services/Players.dart';
import 'package:mtg/GUI/Class/Players/Players_variable.dart';

class Player_6_Widget extends StatelessWidget {
  const Player_6_Widget({
    Key? key,
    required PageController controller_second,
    required this.w,
    required this.h,
    required this.second,
    required PageController controller_third,
    required this.third,
    required PageController controller_first,
    required this.first,
    required PageController controller_fourth,
    required this.fourth,
    required PageController controller_fifth,
    required this.fifth,
    required PageController controller_sixth,
    required this.sixth,
  })  : _controller_second = controller_second,
        _controller_third = controller_third,
        _controller_first = controller_first,
        _controller_fourth = controller_fourth,
        _controller_fifth = controller_fifth,
        _controller_sixth = controller_sixth,
        super(key: key);

  final PageController _controller_second;
  final double w;
  final double h;
  final Player second;
  final PageController _controller_third;
  final Player third;
  final PageController _controller_first;
  final Player first;
  final PageController _controller_fourth;
  final Player fourth;
  final PageController _controller_fifth;
  final Player fifth;
  final PageController _controller_sixth;
  final Player sixth;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: Row(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: RotatedBox(
                    quarterTurns: -3,
                    child: Three_Player_Widget_A(
                      circle: Color.fromARGB(255, 80, 79, 79),
                      color_background: Color.fromARGB(255, 233, 232, 197),
                      image_background: "assets/White.svg",
                      controller_first: _controller_second,
                      h: w / 2,
                      w: h / 3,
                      player: second,
                      // type of list image/type
                      commander: {
                        "assets/Blue.svg": "com_blue",
                        "assets/Black.svg": "com_black",
                        "assets/Red.svg": "com_red",
                        "assets/Green.svg": "com_green",
                        "assets/ColorLess.svg": "com_grey",
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: RotatedBox(
                    quarterTurns: -1,
                    child: Three_Player_Widget_A(
                      circle: Color.fromARGB(255, 80, 79, 79),
                      color_background: Color.fromARGB(255, 0, 121, 221),
                      image_background: "assets/Blue.svg",
                      controller_first: _controller_third,
                      h: w / 2,
                      w: h / 3,
                      player: third,
                      // type of list image/type
                      commander: {
                        "assets/White.svg": "com_white",
                        "assets/Black.svg": "com_black",
                        "assets/Red.svg": "com_red",
                        "assets/Green.svg": "com_green",
                        "assets/ColorLess.svg": "com_grey",
                      },
                    ),
                  ),
                ),
              ],
            )),
          ],
        )),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: RotatedBox(
                  quarterTurns: -3,
                  child: Three_Player_Widget_A(
                    circle: Color.fromARGB(255, 80, 79, 79),
                    color_background: Color.fromARGB(255, 48, 48, 48),
                    image_background: "assets/Black.svg",
                    controller_first: _controller_first,
                    h: w / 2,
                    w: h / 3,
                    player: first,
                    // type of list image/type
                    commander: {
                      "assets/White.svg": "com_white",
                      "assets/Blue.svg": "com_blue",
                      "assets/Red.svg": "com_red",
                      "assets/Green.svg": "com_green",
                      "assets/ColorLess.svg": "com_grey",
                    },
                  ),
                ),
              ),
              Expanded(
                child: RotatedBox(
                  quarterTurns: -1,
                  child: Three_Player_Widget_A(
                    circle: Color.fromARGB(255, 80, 79, 79),
                    color_background: Color.fromARGB(255, 220, 15, 0),
                    image_background: "assets/Red.svg",
                    controller_first: _controller_fourth,
                    h: w / 2,
                    w: h / 3,
                    player: fourth,
                    // type of list image/type
                    commander: {
                      "assets/White.svg": "com_white",
                      "assets/Black.svg": "com_black",
                      "assets/Blue.svg": "com_blue",
                      "assets/Green.svg": "com_green",
                      "assets/ColorLess.svg": "com_grey",
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Row(
          children: <Widget>[
            Expanded(
              child: RotatedBox(
                quarterTurns: -3,
                child: Three_Player_Widget_A(
                  circle: Color.fromARGB(255, 80, 79, 79),
                  color_background: Colors.green,
                  image_background: "assets/Green.svg",
                  controller_first: _controller_fifth,
                  h: w / 2,
                  w: h / 3,
                  player: fifth,
                  // type of list image/type
                  commander: {
                    "assets/White.svg": "com_white",
                    "assets/Black.svg": "com_black",
                    "assets/Blue.svg": "com_blue",
                    "assets/Red.svg": "com_red",
                    "assets/ColorLess.svg": "com_grey",
                  },
                ),
              ),
            ),
            Expanded(
              child: RotatedBox(
                quarterTurns: -1,
                child: Three_Player_Widget_A(
                  circle: Color.fromARGB(255, 80, 79, 79),
                  color_background: Colors.grey,
                  image_background: "assets/ColorLess.svg",
                  controller_first: _controller_sixth,
                  h: w / 2,
                  w: h / 3,
                  player: sixth,
                  // type of list image/type
                  commander: {
                    "assets/White.svg": "com_white",
                    "assets/Black.svg": "com_black",
                    "assets/Blue.svg": "com_blue",
                    "assets/Red.svg": "com_red",
                    "assets/Green.svg": "com_green",
                  },
                ),
              ),
            ),
          ],
        )),
      ],
    );
  }
}
