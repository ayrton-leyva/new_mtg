import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mtg/Services/Players.dart';

class Single_Counter extends StatefulWidget {
  Single_Counter({
    required this.x,
    required this.y,
    required this.height,
    required this.width,
    required this.player,
    required this.image,
    required this.type,
    required this.mash_color,
    required this.text_color,
    required this.text_size,
  });
  late double x;
  late double y;
  late double width;
  late double height;
  late Player player;
  late String image;
  late String type;
  late Color mash_color;
  late Color text_color;
  late double text_size;

  @override
  State<Single_Counter> createState() => _Single_CounterState();
}

class _Single_CounterState extends State<Single_Counter> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Stack(
        children: <Widget>[
          Container(
            color: widget.mash_color,
          ),
          Positioned(
            left: widget.x,
            bottom: widget.y,
            child: Container(
              child: SvgPicture.asset(
                widget.image,
                height: widget.width * 2 / 5,
              ),
            ),
          ),
          Center(
            child: Text(
              switcher_text(widget.player, widget.type),
              style: TextStyle(
                  fontSize: widget.text_size,
                  color: widget.text_color,
                  decoration: TextDecoration.none),
            ),
          ),
          Column(
            children: <Widget>[
              // Buttons Increase
              SizedBox(
                height: widget.height / 2,
                width: widget.width,
                child: GestureDetector(
                  child: Container(
                    color: Colors.transparent,
                    child: Text(""),
                  ),
                  onTap: () {
                    print("Increase");
                    setState(() {
                      switcher_positive(widget.player, widget.type);
                    });
                  },
                ),
              ),
              // Buttons Increase
              SizedBox(
                  height: widget.height / 2,
                  width: widget.width,
                  child: GestureDetector(
                    child: Container(
                      color: Colors.transparent,
                      child: Text(""),
                    ),
                    onTap: () {
                      print("Decrease");
                      setState(() {
                        switcher_negative(widget.player, widget.type);
                      });
                    },
                  )),
            ],
          ),
        ],
      ),
    );
  }

  String switcher_text(Player current, String type) {
    String text = "";
    switch (type) {
      case "storm":
        text = current.storm.toString();
        break;
      case "energy":
        text = current.energy.toString();
        break;
      case "experience":
        text = current.experience.toString();
        break;
      case "poison":
        text = current.poison.toString();
        break;
      case "red":
        text = current.red.toString();
        break;
      case "blue":
        text = current.blue.toString();
        break;
      case "black":
        text = current.black.toString();
        break;
      case "white":
        text = current.white.toString();
        break;
      case "green":
        text = current.green.toString();
        break;
      case "blank":
        text = current.blank.toString();
        break;
      case "com_black":
        text = current.commander_damage[0].toString();
        break;
      case "com_white":
        text = current.commander_damage[1].toString();
        break;
      case "com_blue":
        text = current.commander_damage[2].toString();
        break;
      case "com_snow":
        text = current.commander_damage[6].toString();
        break;
      case "com_red":
        text = current.commander_damage[3].toString();
        break;
      case "com_green":
        text = current.commander_damage[4].toString();
        break;
      case "com_grey":
        text = current.commander_damage[5].toString();
        break;
      case "com_purple":
        text = current.commander_damage[7].toString();
        break;
    }
    return text;
  }

  void switcher_positive(Player current, String type) {
    switch (type) {
      case "storm":
        current.storm += 1;
        break;
      case "energy":
        current.energy += 1;
        break;
      case "experience":
        current.experience += 1;
        break;
      case "poison":
        current.poison += 1;
        break;
      case "red":
        current.red += 1;
        break;
      case "blue":
        current.blue += 1;
        break;
      case "black":
        current.black += 1;
        break;
      case "white":
        current.white += 1;
        break;
      case "green":
        current.green += 1;
        break;
      case "blank":
        current.blank += 1;
        break;
      // Commander
      case "com_black":
        current.commander_damage[0] += 1;
        break;
      case "com_white":
        current.commander_damage[1] += 1;
        break;
      case "com_blue":
        current.commander_damage[2] += 1;
        break;
      case "com_snow":
        current.commander_damage[6] += 1;
        break;
      case "com_red":
        current.commander_damage[3] += 1;
        break;
      case "com_green":
        current.commander_damage[4] += 1;
        break;
      case "com_grey":
        current.commander_damage[5] += 1;
        break;
      case "com_purple":
        current.commander_damage[7] += 1;
        break;
    }
  }

  void switcher_negative(Player current, String type) {
    switch (type) {
      case "storm":
        if (current.storm > 0) {
          current.storm -= 1;
        }
        break;
      case "energy":
        if (current.energy > 0) {
          current.energy -= 1;
        }
        break;
      case "experience":
        if (current.experience > 0) {
          current.experience -= 1;
        }
        break;
      case "poison":
        if (current.poison > 0) {
          current.poison -= 1;
        }
        break;
      case "red":
        if (current.red > 0) {
          current.red -= 1;
        }
        break;
      case "blue":
        if (current.blue > 0) {
          current.blue -= 1;
        }
        break;
      case "black":
        if (current.black > 0) {
          current.black -= 1;
        }
        break;
      case "white":
        if (current.white > 0) {
          current.white -= 1;
        }
        break;
      case "green":
        if (current.green > 0) {
          current.green -= 1;
        }
        break;
      case "blank":
        if (current.blank > 0) {
          current.blank -= 1;
        }
        break;
      // Commander
      case "com_black":
        if (current.commander_damage[0] > 0) {
          current.commander_damage[0] -= 1;
        }
        break;
      case "com_white":
        if (current.commander_damage[1] > 0) {
          current.commander_damage[1] -= 1;
        }
        break;
      case "com_blue":
        if (current.commander_damage[2] > 0) {
          current.commander_damage[2] -= 1;
        }
        break;
      case "com_red":
        if (current.commander_damage[3] > 0) {
          current.commander_damage[3] -= 1;
        }
        break;
      case "com_green":
        if (current.commander_damage[4] > 0) {
          current.commander_damage[4] -= 1;
        }
        break;
      case "com_grey":
        if (current.commander_damage[5] > 0) {
          current.commander_damage[5] -= 1;
        }
        break;
      case "com_snow":
        if (current.commander_damage[6] > 0) {
          current.commander_damage[6] -= 1;
        }
        break;
      case "com_purple":
        if (current.commander_damage[7] > 0) {
          current.commander_damage[7] -= 1;
        }
        break;
    }
  }
}
