import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mtg/Services/Players.dart';

class Commander_Tax extends StatefulWidget {
  Commander_Tax({
    required this.text_color,
    required this.player,
    required this.backGround,
    required this.height,
    required this.width,
    required this.image,
  });
  final String image;
  final double height;
  final double width;
  final Color backGround;
  final Color text_color;
  final Player player;
  @override
  State<Commander_Tax> createState() => _Commander_TaxState();
}

class _Commander_TaxState extends State<Commander_Tax> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: widget.backGround,
        ),
        Center(
          child: SizedBox(
            height: widget.width * 3 / 5,
            child: Container(
              // color: widget.backGround,
              decoration: new BoxDecoration(
                color: Color.fromARGB(255, 80, 79, 79),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            child: SvgPicture.asset(
              widget.image,
              height: widget.width * 2 / 5,
            ),
          ),
        ),
        Positioned(
          // Vedere come fare
          right: 20,
          bottom: 20,
          child: Text("Commander Tax",
              style: TextStyle(
                  fontSize: 17,
                  color: widget.text_color,
                  decoration: TextDecoration.none)),
        ),
        Center(
          child: Text(
              (widget.player.command_tax > 0)
                  ? "+" + widget.player.command_tax.toString()
                  : widget.player.command_tax.toString(),
              style: TextStyle(
                  fontSize: 100,
                  color: widget.text_color,
                  decoration: TextDecoration.none)),
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
                    widget.player.command_tax += 2;
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
                    setState(
                      () {
                        widget.player.command_tax -= 2;
                      },
                    );
                  },
                )),
          ],
        ),
      ],
    );
  }
}
