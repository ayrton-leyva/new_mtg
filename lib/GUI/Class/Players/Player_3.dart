import 'package:flutter/material.dart';
import 'package:mtg/Services/Players.dart';
import 'package:mtg/GUI/Class/Players/Players_variable.dart';

class Player_3_Widget extends StatelessWidget {
  const Player_3_Widget({
    Key? key,
    required this.w,
    required this.h,
    required PageController controller_second,
    required this.second,
    required PageController controller_third,
    required this.third,
    required PageController controller_first,
    required this.first,
  })  : _controller_second = controller_second,
        _controller_third = controller_third,
        _controller_first = controller_first,
        super(key: key);

  final double w;
  final double h;
  final PageController _controller_second;
  final Player second;
  final PageController _controller_third;
  final Player third;
  final PageController _controller_first;
  final Player first;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
            width: w,
            height: h * 3 / 5,
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
                      w: h * 3 / 5,
                      player: second,
                      // type of list image/type
                      commander: {
                        "assets/Blue.svg": "com_blue",
                        "assets/Black.svg": "com_black",
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
                      w: h * 3 / 5,
                      player: third,
                      // type of list image/type
                      commander: {
                        "assets/White.svg": "com_white",
                        "assets/Black.svg": "com_black",
                      },
                    ),
                  ),
                )
              ],
            )),
        Expanded(
          child: Three_Player_Widget_A(
            circle: Color.fromARGB(255, 80, 79, 79),
            color_background: Color.fromARGB(255, 48, 48, 48),
            image_background: "assets/Black.svg",
            controller_first: _controller_first,
            h: h,
            w: w,
            player: first,
            // type of list image/type
            commander: {
              "assets/White.svg": "com_white",
              "assets/Blue.svg": "com_blue",
            },
          ),
        )
      ],
    );
  }
}
