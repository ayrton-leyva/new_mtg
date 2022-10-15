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

class Player_1_widget extends StatelessWidget {
  const Player_1_widget({
    Key? key,
    required PageController controller_first,
    required this.first,
    required this.h,
    required this.w,
  })  : _controller_first = controller_first,
        super(key: key);

  final PageController _controller_first;
  final Player first;
  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _controller_first,
            children: <Widget>[
              LifePanel(
                image: "assets/Black.svg",
                backGround: Color.fromARGB(255, 48, 48, 48),
                text: Color.fromARGB(255, 232, 231, 231),
                player: first,
                height: h,
                width: w,
              ),
              Commander_Panel(
                backGround: Color.fromARGB(255, 48, 48, 48),
                text: Color.fromARGB(255, 232, 231, 231),
                player: first,
                image: "assets/Commander.svg",
                height: h,
                width: w,
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            // Poison Counter
                            Single_Counter(
                              x: 10,
                              y: 10,
                              height: 200,
                              width: 100,
                              player: first,
                              text_color: Color.fromARGB(255, 232, 231, 231),
                              mash_color: Color.fromARGB(51, 103, 94, 94),
                              type: "com_black",
                              image: "assets/Black.svg",
                              text_size: 50,
                            ),
                            // Energy
                            Single_Counter(
                              x: 10,
                              y: 10,
                              height: 200,
                              width: 100,
                              player: first,
                              text_color: Color.fromARGB(255, 232, 231, 231),
                              mash_color: Color.fromARGB(51, 103, 94, 94),
                              type: "com_blue",
                              image: "assets/Blue.svg",
                              text_size: 50,
                            ),
                            // Experience
                            Single_Counter(
                              x: 10,
                              y: 10,
                              height: 200,
                              width: 100,
                              player: first,
                              text_color: Color.fromARGB(255, 232, 231, 231),
                              mash_color: Color.fromARGB(51, 103, 94, 94),
                              type: "com_white",
                              image: "assets/White.svg",
                              text_size: 50,
                            ),
                            Single_Counter(
                              x: 10,
                              y: 10,
                              height: 200,
                              width: 100,
                              player: first,
                              text_color: Color.fromARGB(255, 232, 231, 231),
                              mash_color: Color.fromARGB(51, 103, 94, 94),
                              type: "com_snow",
                              image: "assets/Snow.svg",
                              text_size: 50,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            // Poison Counter
                            Single_Counter(
                              x: 10,
                              y: 10,
                              height: 200,
                              width: 100,
                              player: first,
                              text_color: Color.fromARGB(255, 232, 231, 231),
                              mash_color: Color.fromARGB(51, 103, 94, 94),
                              type: "com_red",
                              image: "assets/Red.svg",
                              text_size: 50,
                            ),
                            // Energy
                            Single_Counter(
                              x: 10,
                              y: 10,
                              height: 200,
                              width: 100,
                              player: first,
                              text_color: Color.fromARGB(255, 232, 231, 231),
                              mash_color: Color.fromARGB(51, 103, 94, 94),
                              type: "com_green",
                              image: "assets/Green.svg",
                              text_size: 50,
                            ),
                            // Experience
                            Single_Counter(
                              x: 10,
                              y: 10,
                              height: 200,
                              width: 100,
                              player: first,
                              text_color: Color.fromARGB(255, 232, 231, 231),
                              mash_color: Color.fromARGB(51, 103, 94, 94),
                              type: "com_grey",
                              image: "assets/X.svg",
                              text_size: 50,
                            ),
                            Single_Counter(
                              x: 10,
                              y: 10,
                              height: 200,
                              width: 100,
                              player: first,
                              text_color: Color.fromARGB(255, 232, 231, 231),
                              mash_color: Color.fromARGB(51, 103, 94, 94),
                              type: "com_purple",
                              image: "assets/ColorLess.svg",
                              text_size: 50,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Commander_Tax(
                backGround: Color.fromARGB(255, 48, 48, 48),
                text_color: Color.fromARGB(255, 232, 231, 231),
                image: "assets/Commander.svg",
                player: first,
                height: h,
                width: w,
              ),
              Permanent_all_counters(
                text_color: Color.fromARGB(255, 232, 231, 231),
                backGround: Color.fromARGB(255, 48, 48, 48),
                player: first,
                height: h,
                width: w,
                children: [
                  Row(
                    children: [
                      // Poison Counter
                      Single_Counter(
                        x: 10,
                        y: 10,
                        height: 200,
                        width: 100,
                        player: first,
                        text_color: Color.fromARGB(255, 232, 231, 231),
                        mash_color: Color.fromARGB(51, 103, 94, 94),
                        type: "poison",
                        image: "assets/GP.svg",
                        text_size: 50,
                      ),
                      // Energy
                      Single_Counter(
                        x: 10,
                        y: 10,
                        height: 200,
                        width: 100,
                        player: first,
                        text_color: Color.fromARGB(255, 232, 231, 231),
                        mash_color: Color.fromARGB(51, 103, 94, 94),
                        type: "energy",
                        image: "assets/BP.svg",
                        text_size: 50,
                      ),
                      // Experience
                      Single_Counter(
                        x: 10,
                        y: 10,
                        height: 200,
                        width: 100,
                        player: first,
                        text_color: Color.fromARGB(255, 232, 231, 231),
                        mash_color: Color.fromARGB(51, 103, 94, 94),
                        type: "experience",
                        image: "assets/GP.svg",
                        text_size: 50,
                      ),
                    ],
                  ),
                ],
              ),
              Storm(
                circle_color: Color.fromARGB(255, 80, 79, 79),
                image: "assets/Storm.svg",
                backGround: Color.fromARGB(255, 48, 48, 48),
                text: Color.fromARGB(255, 232, 231, 231),
                player: first,
                height: h,
                width: w,
              ),
              Mana_counters(
                text_color: Color.fromARGB(255, 233, 232, 197),
                backGround: Color.fromARGB(255, 48, 48, 48),
                height: h,
                width: w,
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            // Poison Counter
                            Single_Counter(
                              x: 10,
                              y: 10,
                              height: 200,
                              width: 100,
                              player: first,
                              text_color: Color.fromARGB(255, 232, 231, 231),
                              mash_color: Color.fromARGB(51, 103, 94, 94),
                              type: "black",
                              image: "assets/Black.svg",
                              text_size: 50,
                            ),
                            // Energy
                            Single_Counter(
                              x: 10,
                              y: 10,
                              height: 200,
                              width: 100,
                              player: first,
                              text_color: Color.fromARGB(255, 232, 231, 231),
                              mash_color: Color.fromARGB(51, 103, 94, 94),
                              type: "blue",
                              image: "assets/Blue.svg",
                              text_size: 50,
                            ),
                            // Experience
                            Single_Counter(
                              x: 10,
                              y: 10,
                              height: 200,
                              width: 100,
                              player: first,
                              text_color: Color.fromARGB(255, 232, 231, 231),
                              mash_color: Color.fromARGB(51, 103, 94, 94),
                              type: "white",
                              image: "assets/White.svg",
                              text_size: 50,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            // Poison Counter
                            Single_Counter(
                              x: 10,
                              y: 10,
                              height: 200,
                              width: 100,
                              player: first,
                              text_color: Color.fromARGB(255, 232, 231, 231),
                              mash_color: Color.fromARGB(51, 103, 94, 94),
                              type: "red",
                              image: "assets/Red.svg",
                              text_size: 50,
                            ),
                            // Energy
                            Single_Counter(
                              x: 10,
                              y: 10,
                              height: 200,
                              width: 100,
                              player: first,
                              text_color: Color.fromARGB(255, 232, 231, 231),
                              mash_color: Color.fromARGB(51, 103, 94, 94),
                              type: "green",
                              image: "assets/Green.svg",
                              text_size: 50,
                            ),
                            // Experience
                            Single_Counter(
                              x: 10,
                              y: 10,
                              height: 200,
                              width: 100,
                              player: first,
                              text_color: Color.fromARGB(255, 232, 231, 231),
                              mash_color: Color.fromARGB(51, 103, 94, 94),
                              type: "blank",
                              image: "assets/ColorLess.svg",
                              text_size: 50,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
