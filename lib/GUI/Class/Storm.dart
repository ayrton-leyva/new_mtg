import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:mtg/Services/Players.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Storm extends StatefulWidget {
  const Storm(
      {required this.height,
      required this.width,
      required this.image,
      required this.player,
      required this.backGround,
      required this.text,
      required this.circle_color,
      super.key});
  final Color circle_color;
  final Color backGround;
  final Color text;
  final Player player;
  final String image;
  final double height;
  final double width;
  @override
  State<Storm> createState() => _StormState();
}

class _StormState extends State<Storm> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        // Background Image
        // Consider Color / Position
        // Column SkinWell

        // Iterable Text
        Container(
          color: widget.backGround,
          child: Center(
            child: Container(
              decoration: new BoxDecoration(
                color: widget.circle_color,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                widget.image,
                height: 3 * widget.width / 5,
              ),
            ),
          ),
        ),
        // Listener
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
                    widget.player.storm += 1;
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
                    if (widget.player.storm > 0) {
                      setState(
                        () {
                          widget.player.storm -= 1;
                        },
                      );
                    }
                  },
                )),
          ],
        ),
        // Counter
        Center(
          child: Text(widget.player.storm.toString(),
              style: TextStyle(
                  fontSize: 100,
                  color: widget.text,
                  decoration: TextDecoration.none)),
        ),
        // Page Type
        Positioned(
          // Vedere come fare
          right: 20,
          bottom: 20,
          child: Text("Storm Counter",
              style: TextStyle(
                  fontSize: 17,
                  color: widget.text,
                  decoration: TextDecoration.none)),
        ),
      ],
    );
  }
}
