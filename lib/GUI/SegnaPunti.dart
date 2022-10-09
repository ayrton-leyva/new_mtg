import 'package:flutter/material.dart';
import 'package:mtg/Services/LifePanel.dart';
import 'package:mtg/Services/Players.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SegnaPunti extends StatefulWidget {
  List<bool> players;
  SegnaPunti({
    required this.players,
  });

  @override
  State<SegnaPunti> createState() => _SegnaPuntiState();
}

class _SegnaPuntiState extends State<SegnaPunti> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      child: new Stack(
        children: <Widget>[
          // Buttons Alignment
          //  Depends on Number Players
          // Consider the corner between panels

          // One Player

          Visibility(
            visible: widget.players[0],
            child: new Container(
              alignment: Alignment.center,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: LifePanel(
                      image: "assets/Black.svg",
                      backGround: Color.fromARGB(255, 48, 48, 48),
                      text: Color.fromARGB(255, 232, 231, 231),
                      player: Player(lifepoints: 40, number_players: 1),
                      height: h,
                      width: w,
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
                      child: LifePanel(
                        image: "assets/White.svg",
                        backGround: Color.fromARGB(255, 233, 232, 197),
                        text: Color.fromARGB(255, 40, 39, 39),
                        player: Player(lifepoints: 40, number_players: 2),
                        height: h / 2,
                        width: w,
                      ),
                    ),
                  ),
                  Expanded(
                    child: LifePanel(
                      image: "assets/Black.svg",
                      backGround: Color.fromARGB(255, 48, 48, 48),
                      text: Color.fromARGB(255, 232, 231, 231),
                      player: Player(lifepoints: 40, number_players: 2),
                      height: h / 2,
                      width: w,
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
                              child: LifePanel(
                                image: "assets/White.svg",
                                backGround: Color.fromARGB(255, 233, 232, 197),
                                text: Color.fromARGB(255, 40, 39, 39),
                                player:
                                    Player(lifepoints: 40, number_players: 3),
                                height: w / 2,
                                width: h * 3 / 5,
                              ),
                            ),
                          ),
                          Expanded(
                            child: RotatedBox(
                              quarterTurns: -1,
                              child: LifePanel(
                                image: "assets/Blue.svg",
                                backGround: Color.fromARGB(255, 0, 121, 221),
                                text: Color.fromARGB(255, 232, 231, 231),
                                player:
                                    Player(lifepoints: 40, number_players: 3),
                                height: w / 2,
                                width: h * 3 / 5,
                              ),
                            ),
                          ),
                        ],
                      )),
                  Expanded(
                    child: LifePanel(
                      image: "assets/Black.svg",
                      backGround: Color.fromARGB(255, 48, 48, 48),
                      text: Color.fromARGB(255, 232, 231, 231),
                      player: Player(lifepoints: 40, number_players: 3),
                      height: h * 2 / 5,
                      width: w,
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
                          child: LifePanel(
                            image: "assets/White.svg",
                            backGround: Color.fromARGB(255, 233, 232, 197),
                            text: Color.fromARGB(255, 40, 39, 39),
                            player: Player(lifepoints: 40, number_players: 4),
                            height: w / 2,
                            width: h / 2,
                          ),
                        ),
                      ),
                      Expanded(
                        child: RotatedBox(
                          quarterTurns: -1,
                          child: LifePanel(
                            image: "assets/Blue.svg",
                            backGround: Color.fromARGB(255, 0, 121, 221),
                            text: Color.fromARGB(255, 232, 231, 231),
                            player: Player(lifepoints: 40, number_players: 4),
                            height: w / 2,
                            width: h / 2,
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
                          child: LifePanel(
                            image: "assets/Black.svg",
                            backGround: Color.fromARGB(255, 30, 30, 30),
                            text: Color.fromARGB(255, 232, 231, 231),
                            player: Player(lifepoints: 40, number_players: 4),
                            height: w / 2,
                            width: h / 2,
                          ),
                        ),
                      ),
                      Expanded(
                        child: RotatedBox(
                          quarterTurns: -1,
                          child: LifePanel(
                            image: "assets/Red.svg",
                            backGround: Color.fromARGB(255, 220, 15, 0),
                            text: Color.fromARGB(255, 232, 231, 231),
                            player: Player(lifepoints: 40, number_players: 4),
                            height: w / 2,
                            width: h / 2,
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
                              child: LifePanel(
                                image: "assets/White.svg",
                                backGround: Color.fromARGB(255, 233, 232, 197),
                                text: Color.fromARGB(255, 40, 39, 39),
                                player:
                                    Player(lifepoints: 40, number_players: 5),
                                height: w / 2,
                                width: h * 7 / 20,
                              ),
                            ),
                          ),
                          Expanded(
                            child: RotatedBox(
                              quarterTurns: -1,
                              child: LifePanel(
                                image: "assets/Blue.svg",
                                backGround: Color.fromARGB(255, 0, 121, 221),
                                text: Color.fromARGB(255, 232, 231, 231),
                                player:
                                    Player(lifepoints: 40, number_players: 5),
                                height: w / 2,
                                width: h * 7 / 20,
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
                              child: LifePanel(
                                image: "assets/Black.svg",
                                backGround: Color.fromARGB(255, 30, 30, 30),
                                text: Color.fromARGB(255, 232, 231, 231),
                                player:
                                    Player(lifepoints: 40, number_players: 5),
                                height: w / 2,
                                width: h * 7 / 20,
                              ),
                            ),
                          ),
                          Expanded(
                            child: RotatedBox(
                              quarterTurns: -1,
                              child: LifePanel(
                                image: "assets/Red.svg",
                                backGround: Color.fromARGB(255, 220, 15, 0),
                                text: Color.fromARGB(255, 232, 231, 231),
                                player:
                                    Player(lifepoints: 40, number_players: 5),
                                height: w / 2,
                                width: h * 7 / 20,
                              ),
                            ),
                          ),
                        ],
                      )),
                  Expanded(
                    child: LifePanel(
                      image: "assets/Green.svg",
                      backGround: Colors.green,
                      text: Color.fromARGB(255, 232, 231, 231),
                      player: Player(lifepoints: 40, number_players: 5),
                      height: h * 3 / 10,
                      width: w,
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
                              child: LifePanel(
                                image: "assets/White.svg",
                                backGround: Color.fromARGB(255, 233, 232, 197),
                                text: Color.fromARGB(255, 40, 39, 39),
                                player:
                                    Player(lifepoints: 40, number_players: 5),
                                height: w / 2,
                                width: h / 3,
                              ),
                            ),
                          ),
                          Expanded(
                            child: RotatedBox(
                              quarterTurns: -1,
                              child: LifePanel(
                                image: "assets/Blue.svg",
                                backGround: Color.fromARGB(255, 0, 121, 221),
                                text: Color.fromARGB(255, 232, 231, 231),
                                player:
                                    Player(lifepoints: 40, number_players: 5),
                                height: w / 2,
                                width: h / 3,
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
                            child: LifePanel(
                              image: "assets/Black.svg",
                              backGround: Color.fromARGB(255, 30, 30, 30),
                              text: Color.fromARGB(255, 232, 231, 231),
                              player: Player(lifepoints: 40, number_players: 5),
                              height: w / 2,
                              width: h / 3,
                            ),
                          ),
                        ),
                        Expanded(
                          child: RotatedBox(
                            quarterTurns: -1,
                            child: LifePanel(
                              image: "assets/Red.svg",
                              backGround: Color.fromARGB(255, 220, 15, 0),
                              text: Color.fromARGB(255, 232, 231, 231),
                              player: Player(lifepoints: 40, number_players: 5),
                              height: w / 2,
                              width: h / 3,
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
                          child: LifePanel(
                            image: "assets/Green.svg",
                            backGround: Colors.green,
                            text: Color.fromARGB(255, 232, 231, 231),
                            player: Player(lifepoints: 40, number_players: 5),
                            height: w / 2,
                            width: h * 7 / 20,
                          ),
                        ),
                      ),
                      Expanded(
                        child: RotatedBox(
                          quarterTurns: -1,
                          child: LifePanel(
                            image: "assets/ColorLess.svg",
                            backGround: Colors.grey,
                            text: Color.fromARGB(255, 232, 231, 231),
                            player: Player(lifepoints: 40, number_players: 5),
                            height: w / 2,
                            width: h * 7 / 20,
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
                          child: LifePanel(
                            image: "assets/White.svg",
                            backGround: Color.fromARGB(255, 233, 232, 197),
                            text: Color.fromARGB(255, 40, 39, 39),
                            player: Player(lifepoints: 40, number_players: 5),
                            height: w / 2,
                            width: h / 3,
                          ),
                        ),
                      ),
                      Expanded(
                        child: RotatedBox(
                          quarterTurns: -1,
                          child: LifePanel(
                            image: "assets/Blue.svg",
                            backGround: Color.fromARGB(255, 0, 121, 221),
                            text: Color.fromARGB(255, 232, 231, 231),
                            player: Player(lifepoints: 40, number_players: 5),
                            height: w / 2,
                            width: h / 3,
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
                          child: LifePanel(
                            image: "assets/Black.svg",
                            backGround: Color.fromARGB(255, 30, 30, 30),
                            text: Color.fromARGB(255, 232, 231, 231),
                            player: Player(lifepoints: 40, number_players: 5),
                            height: w / 2,
                            width: h / 3,
                          ),
                        ),
                      ),
                      Expanded(
                        child: RotatedBox(
                          quarterTurns: -1,
                          child: LifePanel(
                            image: "assets/Red.svg",
                            backGround: Color.fromARGB(255, 220, 15, 0),
                            text: Color.fromARGB(255, 232, 231, 231),
                            player: Player(lifepoints: 40, number_players: 5),
                            height: w / 2,
                            width: h / 3,
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
                          child: LifePanel(
                            image: "assets/Green.svg",
                            backGround: Colors.green,
                            text: Color.fromARGB(255, 232, 231, 231),
                            player: Player(lifepoints: 40, number_players: 5),
                            height: w / 2,
                            width: h * 7 / 20,
                          ),
                        ),
                      ),
                      Expanded(
                        child: RotatedBox(
                          quarterTurns: -1,
                          child: LifePanel(
                            image: "assets/ColorLess.svg",
                            backGround: Colors.grey,
                            text: Color.fromARGB(255, 232, 231, 231),
                            player: Player(lifepoints: 40, number_players: 5),
                            height: w / 2,
                            width: h * 7 / 20,
                          ),
                        ),
                      ),
                    ],
                  )),
                  Expanded(
                    child: LifePanel(
                      image: "assets/Snow.svg",
                      backGround: Color.fromARGB(255, 255, 248, 254),
                      text: Color.fromARGB(255, 127, 124, 124),
                      player: Player(lifepoints: 40, number_players: 5),
                      height: w / 2,
                      width: h * 7 / 20,
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
                          child: LifePanel(
                            image: "assets/White.svg",
                            backGround: Color.fromARGB(255, 233, 232, 197),
                            text: Color.fromARGB(255, 40, 39, 39),
                            player: Player(lifepoints: 40, number_players: 5),
                            height: w / 2,
                            width: h / 3,
                          ),
                        ),
                      ),
                      Expanded(
                        child: RotatedBox(
                          quarterTurns: -1,
                          child: LifePanel(
                            image: "assets/Blue.svg",
                            backGround: Color.fromARGB(255, 0, 121, 221),
                            text: Color.fromARGB(255, 232, 231, 231),
                            player: Player(lifepoints: 40, number_players: 5),
                            height: w / 2,
                            width: h / 3,
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
                          child: LifePanel(
                            image: "assets/Black.svg",
                            backGround: Color.fromARGB(255, 30, 30, 30),
                            text: Color.fromARGB(255, 232, 231, 231),
                            player: Player(lifepoints: 40, number_players: 5),
                            height: w / 2,
                            width: h / 3,
                          ),
                        ),
                      ),
                      Expanded(
                        child: RotatedBox(
                          quarterTurns: -1,
                          child: LifePanel(
                            image: "assets/Red.svg",
                            backGround: Color.fromARGB(255, 220, 15, 0),
                            text: Color.fromARGB(255, 232, 231, 231),
                            player: Player(lifepoints: 40, number_players: 5),
                            height: w / 2,
                            width: h / 3,
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
                          child: LifePanel(
                            image: "assets/Green.svg",
                            backGround: Colors.green,
                            text: Color.fromARGB(255, 232, 231, 231),
                            player: Player(lifepoints: 40, number_players: 5),
                            height: w / 2,
                            width: h * 7 / 20,
                          ),
                        ),
                      ),
                      Expanded(
                        child: RotatedBox(
                          quarterTurns: -1,
                          child: LifePanel(
                            image: "assets/ColorLess.svg",
                            backGround: Colors.grey,
                            text: Color.fromARGB(255, 232, 231, 231),
                            player: Player(lifepoints: 40, number_players: 5),
                            height: w / 2,
                            width: h * 7 / 20,
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
                          child: LifePanel(
                            image: "assets/Snow.svg",
                            backGround: Colors.grey,
                            text: Color.fromARGB(255, 232, 231, 231),
                            player: Player(lifepoints: 40, number_players: 5),
                            height: w / 2,
                            width: h * 7 / 20,
                          ),
                        ),
                      ),
                      Expanded(
                        child: RotatedBox(
                          quarterTurns: -1,
                          child: LifePanel(
                            image: "assets/BP.svg",
                            backGround: Color.fromARGB(255, 135, 0, 253),
                            text: Color.fromARGB(255, 232, 231, 231),
                            player: Player(lifepoints: 40, number_players: 5),
                            height: w / 2,
                            width: h * 7 / 20,
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
