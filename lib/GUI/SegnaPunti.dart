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

class SegnaPunti extends StatefulWidget {
  List<bool> players;
  SegnaPunti({
    required this.players,
  });

  @override
  State<SegnaPunti> createState() => _SegnaPuntiState();
}

class _SegnaPuntiState extends State<SegnaPunti> {
  // Page Controller
  late PageController _controller_first;
  late PageController _controller_second;
  late PageController _controller_third;
  late PageController _controller_fourth;
  late PageController _controller_fifth;
  late PageController _controller_sixth;
  late PageController _controller_seventh;
  late PageController _controller_eighth;

  // Players
  Player first = Player(
    lifepoints: globals.life_points,
    number_players: globals.number_of_players,
    player_position: 1,
  );
  Player second = Player(
    lifepoints: globals.life_points,
    number_players: globals.number_of_players,
    player_position: 2,
  );
  Player third = Player(
    lifepoints: globals.life_points,
    number_players: globals.number_of_players,
    player_position: 3,
  );
  Player fourth = Player(
    lifepoints: globals.life_points,
    number_players: globals.number_of_players,
    player_position: 4,
  );
  Player fifth = Player(
    lifepoints: globals.life_points,
    number_players: globals.number_of_players,
    player_position: 5,
  );
  Player sixth = Player(
    lifepoints: globals.life_points,
    number_players: globals.number_of_players,
    player_position: 6,
  );
  Player seventh = Player(
    lifepoints: globals.life_points,
    number_players: globals.number_of_players,
    player_position: 7,
  );
  Player eighth = Player(
    lifepoints: globals.life_points,
    number_players: globals.number_of_players,
    player_position: 8,
  );

  @override
  void initState() {
    // TODO: implement initState
    _controller_first = PageController(initialPage: 0);
    _controller_second = PageController(initialPage: 0);
    _controller_third = PageController(initialPage: 0);
    _controller_fourth = PageController(initialPage: 0);
    _controller_fifth = PageController(initialPage: 0);
    _controller_sixth = PageController(initialPage: 0);
    _controller_seventh = PageController(initialPage: 0);
    _controller_eighth = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    if (widget.players[0]) {
      first = first = Player(
          lifepoints: globals.life_points,
          number_players: 8,
          player_position: 1);
    }
    return Container(
      child: new Stack(
        children: <Widget>[
          // One Player

          Visibility(
            visible: widget.players[0],
            child: new Container(
              alignment: Alignment.center,
              color: Colors.white,
              child: Column(
                children: <Widget>[
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
                                Row(
                                  children: [
                                    // Poison Counter
                                    Single_Counter(
                                      x: 10,
                                      y: 10,
                                      height: 200,
                                      width: 100,
                                      player: first,
                                      text_color:
                                          Color.fromARGB(255, 232, 231, 231),
                                      mash_color:
                                          Color.fromARGB(51, 103, 94, 94),
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
                                      text_color:
                                          Color.fromARGB(255, 232, 231, 231),
                                      mash_color:
                                          Color.fromARGB(51, 103, 94, 94),
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
                                      text_color:
                                          Color.fromARGB(255, 232, 231, 231),
                                      mash_color:
                                          Color.fromARGB(51, 103, 94, 94),
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
                                      text_color:
                                          Color.fromARGB(255, 232, 231, 231),
                                      mash_color:
                                          Color.fromARGB(51, 103, 94, 94),
                                      type: "com_snow",
                                      image: "assets/Snow.svg",
                                      text_size: 50,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    // Poison Counter
                                    Single_Counter(
                                      x: 10,
                                      y: 10,
                                      height: 200,
                                      width: 100,
                                      player: first,
                                      text_color:
                                          Color.fromARGB(255, 232, 231, 231),
                                      mash_color:
                                          Color.fromARGB(51, 103, 94, 94),
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
                                      text_color:
                                          Color.fromARGB(255, 232, 231, 231),
                                      mash_color:
                                          Color.fromARGB(51, 103, 94, 94),
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
                                      text_color:
                                          Color.fromARGB(255, 232, 231, 231),
                                      mash_color:
                                          Color.fromARGB(51, 103, 94, 94),
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
                                      text_color:
                                          Color.fromARGB(255, 232, 231, 231),
                                      mash_color:
                                          Color.fromARGB(51, 103, 94, 94),
                                      type: "com_purple",
                                      image: "assets/ColorLess.svg",
                                      text_size: 50,
                                    ),
                                  ],
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
                                  text_color:
                                      Color.fromARGB(255, 232, 231, 231),
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
                                  text_color:
                                      Color.fromARGB(255, 232, 231, 231),
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
                                  text_color:
                                      Color.fromARGB(255, 232, 231, 231),
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
                                Row(
                                  children: [
                                    // Poison Counter
                                    Single_Counter(
                                      x: 10,
                                      y: 10,
                                      height: 200,
                                      width: 100,
                                      player: first,
                                      text_color:
                                          Color.fromARGB(255, 232, 231, 231),
                                      mash_color:
                                          Color.fromARGB(51, 103, 94, 94),
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
                                      text_color:
                                          Color.fromARGB(255, 232, 231, 231),
                                      mash_color:
                                          Color.fromARGB(51, 103, 94, 94),
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
                                      text_color:
                                          Color.fromARGB(255, 232, 231, 231),
                                      mash_color:
                                          Color.fromARGB(51, 103, 94, 94),
                                      type: "white",
                                      image: "assets/White.svg",
                                      text_size: 50,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    // Poison Counter
                                    Single_Counter(
                                      x: 10,
                                      y: 10,
                                      height: 200,
                                      width: 100,
                                      player: first,
                                      text_color:
                                          Color.fromARGB(255, 232, 231, 231),
                                      mash_color:
                                          Color.fromARGB(51, 103, 94, 94),
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
                                      text_color:
                                          Color.fromARGB(255, 232, 231, 231),
                                      mash_color:
                                          Color.fromARGB(51, 103, 94, 94),
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
                                      text_color:
                                          Color.fromARGB(255, 232, 231, 231),
                                      mash_color:
                                          Color.fromARGB(51, 103, 94, 94),
                                      type: "blank",
                                      image: "assets/ColorLess.svg",
                                      text_size: 50,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          // Two Players

          Visibility(
            visible: widget.players[1],
            child: new Container(
              alignment: Alignment.center,
              color: Colors.white,
              child: Column(
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
              ),
            ),
          ),

          // Three Players

          Visibility(
            visible: widget.players[2],
            child: new Container(
              alignment: Alignment.center,
              // color: Colors.white,
              child: Column(
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
                                color_background:
                                    Color.fromARGB(255, 233, 232, 197),
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
                                color_background:
                                    Color.fromARGB(255, 0, 121, 221),
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
              ),
            ),
          ),

          // Four Players

          Visibility(
            visible: widget.players[3],
            child: new Container(
              alignment: Alignment.center,
              // color: Colors.white,
              child: Column(
                children: <Widget>[
                  // divide by 10
                  Expanded(
                      child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RotatedBox(
                          quarterTurns: -3,
                          child: Three_Player_Widget_A(
                            circle: Color.fromARGB(255, 80, 79, 79),
                            color_background:
                                Color.fromARGB(255, 233, 232, 197),
                            image_background: "assets/White.svg",
                            controller_first: _controller_second,
                            h: w / 2,
                            w: h * 3 / 5,
                            player: second,
                            // type of list image/type
                            commander: {
                              "assets/Blue.svg": "com_blue",
                              "assets/Black.svg": "com_black",
                              "assets/Red.svg": "com_red",
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
                              "assets/Red.svg": "com_red",
                            },
                          ),
                        ),
                      ),
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
                            h: h / 2,
                            w: w / 2,
                            player: first,
                            // type of list image/type
                            commander: {
                              "assets/White.svg": "com_white",
                              "assets/Blue.svg": "com_blue",
                              "assets/Red.svg": "com_red",
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
                            w: h * 3 / 5,
                            player: fourth,
                            // type of list image/type
                            commander: {
                              "assets/White.svg": "com_white",
                              "assets/Black.svg": "com_black",
                              "assets/Blue.svg": "com_blue",
                            },
                          ),
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ),

          // Five Players

          Visibility(
            visible: widget.players[4],
            child: new Container(
              alignment: Alignment.center,
              // color: Colors.white,
              child: Column(
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
                                color_background:
                                    Color.fromARGB(255, 233, 232, 197),
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
                                color_background:
                                    Color.fromARGB(255, 0, 121, 221),
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
                                color_background:
                                    Color.fromARGB(255, 48, 48, 48),
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
                                color_background:
                                    Color.fromARGB(255, 220, 15, 0),
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
              ),
            ),
          ),

          // Six Players

          Visibility(
            visible: widget.players[5],
            child: new Container(
              alignment: Alignment.center,
              // color: Colors.white,
              child: Column(
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
                                color_background:
                                    Color.fromARGB(255, 233, 232, 197),
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
                                color_background:
                                    Color.fromARGB(255, 0, 121, 221),
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
              ),
            ),
          ),

          // Seven Players

          Visibility(
            visible: widget.players[6],
            child: new Container(
              alignment: Alignment.center,
              // color: Colors.white,
              child: Column(
                children: <Widget>[
                  Expanded(
                      child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RotatedBox(
                          quarterTurns: -3,
                          child: Three_Player_Widget_A(
                            circle: Color.fromARGB(255, 80, 79, 79),
                            color_background:
                                Color.fromARGB(255, 233, 232, 197),
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
                              "assets/Snow.svg": "com_snow",
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
                              "assets/Snow.svg": "com_snow",
                            },
                          ),
                        ),
                      ),
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
                              "assets/Snow.svg": "com_snow",
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
                              "assets/Snow.svg": "com_snow",
                            },
                          ),
                        ),
                      ),
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
                              "assets/Snow.svg": "com_snow",
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
                              "assets/Snow.svg": "com_snow",
                            },
                          ),
                        ),
                      ),
                    ],
                  )),
                  Expanded(
                    child: Three_Player_Widget_A(
                      circle: Color.fromARGB(255, 80, 79, 79),
                      color_background: Color.fromARGB(255, 127, 124, 124),
                      image_background: "assets/Snow.svg",
                      controller_first: _controller_seventh,
                      h: w / 2,
                      w: h / 3,
                      player: seventh,
                      // type of list image/type
                      commander: {
                        "assets/White.svg": "com_white",
                        "assets/Black.svg": "com_black",
                        "assets/Blue.svg": "com_blue",
                        "assets/Red.svg": "com_red",
                        "assets/Green.svg": "com_green",
                        "assets/ColorLess.svg": "com_grey",
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Eight Players

          Visibility(
            visible: widget.players[7],
            child: new Container(
              alignment: Alignment.center,
              // color: Colors.white,
              child: Column(
                children: <Widget>[
                  Expanded(
                      child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RotatedBox(
                          quarterTurns: -3,
                          child: Three_Player_Widget_A(
                            circle: Color.fromARGB(255, 80, 79, 79),
                            color_background:
                                Color.fromARGB(255, 233, 232, 197),
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
                              "assets/Snow.svg": "com_snow",
                              "assets/BP.svg": "com_purple",
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
                              "assets/Snow.svg": "com_snow",
                              "assets/BP.svg": "com_purple",
                            },
                          ),
                        ),
                      ),
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
                              "assets/Snow.svg": "com_snow",
                              "assets/BP.svg": "com_purple",
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
                              "assets/Snow.svg": "com_snow",
                              "assets/BP.svg": "com_purple",
                            },
                          ),
                        ),
                      ),
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
                              "assets/Snow.svg": "com_snow",
                              "assets/BP.svg": "com_purple",
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
                              "assets/Snow.svg": "com_snow",
                              "assets/BP.svg": "com_purple",
                            },
                          ),
                        ),
                      ),
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
                              color_background:
                                  Color.fromARGB(255, 127, 124, 124),
                              image_background: "assets/Snow.svg",
                              controller_first: _controller_seventh,
                              h: w / 2,
                              w: h / 3,
                              player: seventh,
                              // type of list image/type
                              commander: {
                                "assets/White.svg": "com_white",
                                "assets/Black.svg": "com_black",
                                "assets/Blue.svg": "com_blue",
                                "assets/Red.svg": "com_red",
                                "assets/Green.svg": "com_green",
                                "assets/ColorLess.svg": "com_grey",
                                "assets/BP.svg": "com_purple",
                              },
                            )),
                      ),
                      Expanded(
                        child: RotatedBox(
                          quarterTurns: -1,
                          child: Three_Player_Widget_A(
                            circle: Color.fromARGB(255, 80, 79, 79),
                            color_background: Colors.amber,
                            image_background: "assets/BP.svg",
                            controller_first: _controller_eighth,
                            h: w / 2,
                            w: h / 3,
                            player: eighth,
                            // type of list image/type
                            commander: {
                              "assets/White.svg": "com_white",
                              "assets/Black.svg": "com_black",
                              "assets/Blue.svg": "com_blue",
                              "assets/Red.svg": "com_red",
                              "assets/Green.svg": "com_green",
                              "assets/Snow.svg": "com_snow",
                              "assets/ColorLess.svg": "com_grey",
                            },
                          ),
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ),
          // new Container(
          //   alignment: Alignment.center,
          //   color: Colors.transparent,
          //   child: Text(
          //     "Buttons",
          //     style: TextStyle(
          //       color: Colors.blue,
          //     ),
          //   ),
          // ),
        ],
      ),
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
