import 'package:flutter/material.dart';
import 'package:mtg/Services/Players.dart';
import 'package:mtg/GUI/Class/Players/Players_variable.dart';

class Player_5_Widget extends StatelessWidget {
  const Player_5_Widget({
    Key? key,
    required this.h,
    required this.w,
    required PageController controller_second,
    required this.second,
    required PageController controller_third,
    required this.third,
    required PageController controller_first,
    required this.first,
    required PageController controller_fourth,
    required this.fourth,
    required PageController controller_fifth,
    required this.fifth,
  })  : _controller_second = controller_second,
        _controller_third = controller_third,
        _controller_first = controller_first,
        _controller_fourth = controller_fourth,
        _controller_fifth = controller_fifth,
        super(key: key);

  final double h;
  final double w;
  final PageController _controller_second;
  final Player second;
  final PageController _controller_third;
  final Player third;
  final PageController _controller_first;
  final Player first;
  final PageController _controller_fourth;
  final Player fourth;
  final PageController _controller_fifth;
  final Player fifth;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
            height: h * 7 / 20,
            width: w,
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
                      w: h * 7 / 20,
                      player: second,
                      // type of list image/type
                      commander: {
                        "assets/Blue.svg": "com_blue",
                        "assets/Black.svg": "com_black",
                        "assets/Red.svg": "com_red",
                        "assets/Green.svg": "com_green",
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
                      w: h * 7 / 20,
                      player: third,
                      // type of list image/type
                      commander: {
                        "assets/White.svg": "com_white",
                        "assets/Black.svg": "com_black",
                        "assets/Red.svg": "com_red",
                        "assets/Green.svg": "com_green",
                      },
                    ),
                  ),
                ),
              ],
            )),
        SizedBox(
            height: h * 7 / 20,
            width: w,
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
                      w: h * 7 / 20,
                      player: first,
                      // type of list image/type
                      commander: {
                        "assets/White.svg": "com_white",
                        "assets/Blue.svg": "com_blue",
                        "assets/Red.svg": "com_red",
                        "assets/Green.svg": "com_green",
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
                      w: h * 7 / 20,
                      player: fourth,
                      // type of list image/type
                      commander: {
                        "assets/White.svg": "com_white",
                        "assets/Black.svg": "com_black",
                        "assets/Blue.svg": "com_blue",
                        "assets/Green.svg": "com_green",
                      },
                    ),
                  ),
                ),
              ],
            )),
        Expanded(
          child: Three_Player_Widget_A(
            circle: Color.fromARGB(255, 80, 79, 79),
            color_background: Colors.green,
            image_background: "assets/Green.svg",
            controller_first: _controller_fifth,
            h: h * 3 / 10,
            w: w,
            player: fifth,
            // type of list image/type
            commander: {
              "assets/White.svg": "com_white",
              "assets/Black.svg": "com_black",
              "assets/Blue.svg": "com_blue",
              "assets/Red.svg": "com_red",
            },
          ),
        )
      ],
    );
  }
}
