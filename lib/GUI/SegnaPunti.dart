import 'package:flutter/material.dart';
import 'package:mtg/Services/Players.dart';
import 'package:mtg/Services/Globals.dart' as globals;
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
  late Widget current;
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
    switch (globals.number_of_players) {
      case 2:
        current = Player_2_Widget(
            controller_first: _controller_first,
            first: first,
            h: h,
            w: w,
            controller_second: _controller_second,
            second: second);
        break;
      case 3:
        current = Player_3_Widget(
            w: w,
            h: h,
            controller_second: _controller_second,
            second: second,
            controller_third: _controller_third,
            third: third,
            controller_first: _controller_first,
            first: first);
        break;
      case 4:
        current = Player_4_Widget(
            controller_second: _controller_second,
            w: w,
            h: h,
            second: second,
            controller_third: _controller_third,
            third: third,
            controller_first: _controller_first,
            first: first,
            controller_fourth: _controller_fourth,
            fourth: fourth);
        break;
      case 5:
        current = Player_5_Widget(
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
            fifth: fifth);
        break;
      case 6:
        current = Player_6_Widget(
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
            sixth: sixth);
        break;
      case 7:
        current = Player_7_Widget(
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
            seventh: seventh);
        break;
      case 8:
        current = Player_8_Widget(
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
            eighth: eighth);
        break;
      case 1:
      default:
        first = first = Player(
            lifepoints: globals.life_points,
            number_players: 8,
            player_position: 1);
        current = Player_1_widget(
            controller_first: _controller_first, first: first, h: h, w: w);
        break;
    }
    return Container(
      child: new Stack(
        children: <Widget>[
          // Players
          current,
          // Buttons
        ],
      ),
    );
  }
}
