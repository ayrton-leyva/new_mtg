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
import 'package:mtg/GUI/Class/Players/Player_1.dart';
import 'package:mtg/GUI/Class/Players/Player_2.dart';
import 'package:mtg/GUI/Class/Players/Player_3.dart';
import 'package:mtg/GUI/Class/Players/Player_4.dart';
import 'package:mtg/GUI/Class/Players/Player_5.dart';
import 'package:mtg/GUI/Class/Players/Player_6.dart';
import 'package:mtg/GUI/Class/Players/Player_7.dart';
import 'package:mtg/GUI/Class/Players/Player_8.dart';

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
              child: Player_1_widget(
                  controller_first: _controller_first,
                  first: first,
                  h: h,
                  w: w),
            ),
          ),

          // Two Players

          Visibility(
            visible: widget.players[1],
            child: new Container(
              alignment: Alignment.center,
              color: Colors.white,
              child: Player_2_Widget(
                  controller_first: _controller_first,
                  first: first,
                  h: h,
                  w: w,
                  controller_second: _controller_second,
                  second: second),
            ),
          ),

          // Three Players

          Visibility(
            visible: widget.players[2],
            child: new Container(
              alignment: Alignment.center,
              // color: Colors.white,
              child: Player_3_Widget(
                  w: w,
                  h: h,
                  controller_second: _controller_second,
                  second: second,
                  controller_third: _controller_third,
                  third: third,
                  controller_first: _controller_first,
                  first: first),
            ),
          ),

          // Four Players

          Visibility(
            visible: widget.players[3],
            child: new Container(
              alignment: Alignment.center,
              // color: Colors.white,
              child: Player_4_Widget(
                  controller_second: _controller_second,
                  w: w,
                  h: h,
                  second: second,
                  controller_third: _controller_third,
                  third: third,
                  controller_first: _controller_first,
                  first: first,
                  controller_fourth: _controller_fourth,
                  fourth: fourth),
            ),
          ),

          // Five Players

          Visibility(
            visible: widget.players[4],
            child: new Container(
              alignment: Alignment.center,
              // color: Colors.white,
              child: Player_5_Widget(
                  h: h,
                  w: w,
                  controller_second: _controller_second,
                  second: second,
                  controller_third: _controller_third,
                  third: third,
                  controller_first: _controller_first,
                  first: first,
                  controller_fourth: _controller_fourth,
                  fourth: fourth,
                  controller_fifth: _controller_fifth,
                  fifth: fifth),
            ),
          ),

          // Six Players

          Visibility(
            visible: widget.players[5],
            child: new Container(
              alignment: Alignment.center,
              // color: Colors.white,
              child: Player_6_Widget(
                  controller_second: _controller_second,
                  w: w,
                  h: h,
                  second: second,
                  controller_third: _controller_third,
                  third: third,
                  controller_first: _controller_first,
                  first: first,
                  controller_fourth: _controller_fourth,
                  fourth: fourth,
                  controller_fifth: _controller_fifth,
                  fifth: fifth,
                  controller_sixth: _controller_sixth,
                  sixth: sixth),
            ),
          ),

          // Seven Players

          Visibility(
            visible: widget.players[6],
            child: new Container(
              alignment: Alignment.center,
              // color: Colors.white,
              child: Player_7_Widget(
                  controller_second: _controller_second,
                  w: w,
                  h: h,
                  second: second,
                  controller_third: _controller_third,
                  third: third,
                  controller_first: _controller_first,
                  first: first,
                  controller_fourth: _controller_fourth,
                  fourth: fourth,
                  controller_fifth: _controller_fifth,
                  fifth: fifth,
                  controller_sixth: _controller_sixth,
                  sixth: sixth,
                  controller_seventh: _controller_seventh,
                  seventh: seventh),
            ),
          ),

          // Eight Players

          Visibility(
            visible: widget.players[7],
            child: new Container(
              alignment: Alignment.center,
              // color: Colors.white,
              child: Player_8_Widget(
                  controller_second: _controller_second,
                  w: w,
                  h: h,
                  second: second,
                  controller_third: _controller_third,
                  third: third,
                  controller_first: _controller_first,
                  first: first,
                  controller_fourth: _controller_fourth,
                  fourth: fourth,
                  controller_fifth: _controller_fifth,
                  fifth: fifth,
                  controller_sixth: _controller_sixth,
                  sixth: sixth,
                  controller_seventh: _controller_seventh,
                  seventh: seventh,
                  controller_eighth: _controller_eighth,
                  eighth: eighth),
            ),
          ),
        ],
      ),
    );
  }
}
