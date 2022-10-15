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

class Two_player_Widget extends StatelessWidget {
  const Two_player_Widget({
    Key? key,
    required PageController controller_first,
    required this.second,
    required this.image_background,
    required this.h,
    required this.w,
    required this.type_com,
    required this.image_com,
    required this.color_background,
    required this.circle,
  })  : _controller_first = controller_first,
        super(key: key);

  final PageController _controller_first;
  final String image_background;
  final Color color_background;
  final Color circle;
  final Player second;
  final double h;
  final double w;
  final String type_com;
  final String image_com;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller_first,
      children: <Widget>[
        // LifePanel
        LifePanel(
          image: image_background,
          backGround: color_background,
          text: Color.fromARGB(255, 232, 231, 231),
          player: second,
          height: h / 2,
          width: w,
        ),
        // Commander Panel
        Commander_Panel(
          backGround: color_background,
          text: Color.fromARGB(255, 232, 231, 231),
          player: second,
          image: "assets/Commander.svg",
          height: h,
          width: w,
          children: [
            Center(
              child: Single_Counter(
                x: 10,
                y: 10,
                height: 200,
                width: 100,
                player: second,
                text_color: Color.fromARGB(255, 232, 231, 231),
                mash_color: Color.fromARGB(51, 103, 94, 94),
                type: type_com,
                image: image_com,
                text_size: 50,
              ),
            ),
          ],
        ),
        // Commander Tax
        Commander_Tax(
          backGround: color_background,
          text_color: Color.fromARGB(255, 232, 231, 231),
          image: "assets/Commander.svg",
          player: second,
          height: h / 2,
          width: w,
        ),
        // Permanent Counters
        Permanent_all_counters(
          text_color: Color.fromARGB(255, 232, 231, 231),
          backGround: color_background,
          player: second,
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
                  player: second,
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
                  player: second,
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
                  player: second,
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
        // Storm
        Storm(
          circle_color: circle,
          image: "assets/Storm.svg",
          backGround: color_background,
          text: Color.fromARGB(255, 232, 231, 231),
          player: second,
          height: h / 2,
          width: w,
        ),
        // Black Blue White
        Mana_counters(
          text_color: Color.fromARGB(255, 233, 232, 197),
          backGround: color_background,
          height: h,
          width: w,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // Poison Counter
                  Single_Counter(
                    x: 10,
                    y: 10,
                    height: 200,
                    width: 100,
                    player: second,
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
                    player: second,
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
                    player: second,
                    text_color: Color.fromARGB(255, 232, 231, 231),
                    mash_color: Color.fromARGB(51, 103, 94, 94),
                    type: "white",
                    image: "assets/White.svg",
                    text_size: 50,
                  ),
                  Single_Counter(
                    x: 10,
                    y: 10,
                    height: 200,
                    width: 100,
                    player: second,
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
                    player: second,
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
                    player: second,
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
    );
  }
}

class Three_Player_Widget_A extends StatelessWidget {
  const Three_Player_Widget_A({
    Key? key,
    required PageController controller_first,
    required this.player,
    required this.h,
    required this.w,
    required this.circle,
    required this.color_background,
    required this.commander,
    required this.image_background,
  })  : _controller_first = controller_first,
        super(key: key);

  final PageController _controller_first;
  final Player player;
  final double h;
  final double w;
  final Color circle;
  final Color color_background;
  final String image_background;
  final Map<String, String> commander;

  @override
  Widget build(BuildContext context) {
    List<Single_Counter> list = [];
    for (final pair in commander.entries) {
      final image = pair.key;
      final type = pair.value;
      list.add(
        Single_Counter(
          x: 10,
          y: 10,
          height: 200,
          width: 100,
          player: player,
          text_color: Color.fromARGB(255, 232, 231, 231),
          mash_color: Color.fromARGB(51, 103, 94, 94),
          type: type,
          image: image,
          text_size: 50,
        ),
      );
    }
    return PageView(
      controller: _controller_first,
      children: <Widget>[
        // LifePanel
        LifePanel(
          image: image_background,
          backGround: color_background,
          text: Color.fromARGB(255, 232, 231, 231),
          player: player,
          height: h * 2 / 5,
          width: w,
        ),
        // Commander Damage
        Commander_Panel(
          backGround: color_background,
          text: Color.fromARGB(255, 232, 231, 231),
          player: player,
          image: "assets/Commander.svg",
          height: h * 2 / 5,
          width: w,
          children: [
            SingleChildScrollView(
                scrollDirection: Axis.horizontal, child: Row(children: list)),
          ],
        ),
        // Commander Tax
        Commander_Tax(
          backGround: color_background,
          text_color: Color.fromARGB(255, 232, 231, 231),
          image: "assets/Commander.svg",
          player: player,
          height: h * 2 / 5,
          width: w,
        ),
        // Permanent Counters
        Permanent_all_counters(
          text_color: Color.fromARGB(255, 232, 231, 231),
          backGround: color_background,
          player: player,
          height: h * 2 / 5,
          width: w,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // Poison Counter
                  Single_Counter(
                    x: 10,
                    y: 10,
                    height: 200,
                    width: 100,
                    player: player,
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
                    player: player,
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
                    player: player,
                    text_color: Color.fromARGB(255, 232, 231, 231),
                    mash_color: Color.fromARGB(51, 103, 94, 94),
                    type: "experience",
                    image: "assets/GP.svg",
                    text_size: 50,
                  ),
                ],
              ),
            ),
          ],
        ),
        // Storm
        Storm(
          circle_color: Color.fromARGB(255, 80, 79, 79),
          image: "assets/Storm.svg",
          backGround: color_background,
          text: Color.fromARGB(255, 232, 231, 231),
          player: player,
          height: h * 2 / 5,
          width: w,
        ),
        // Mana_counters 1
        Mana_counters(
          text_color: Color.fromARGB(255, 233, 232, 197),
          backGround: color_background,
          height: h,
          width: w,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // Poison Counter
                  Single_Counter(
                    x: 10,
                    y: 10,
                    height: 200,
                    width: 100,
                    player: player,
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
                    player: player,
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
                    player: player,
                    text_color: Color.fromARGB(255, 232, 231, 231),
                    mash_color: Color.fromARGB(51, 103, 94, 94),
                    type: "white",
                    image: "assets/White.svg",
                    text_size: 50,
                  ),
                  Single_Counter(
                    x: 10,
                    y: 10,
                    height: 200,
                    width: 100,
                    player: player,
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
                    player: player,
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
                    player: player,
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
    );
  }
}
