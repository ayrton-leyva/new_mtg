import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mtg/Services/Players.dart';

class Commander_Panel extends StatefulWidget {
  Commander_Panel({
    required this.text,
    required this.backGround,
    required this.image,
    required this.height,
    required this.width,
    required this.player,
    required this.children,
  });
  final Player player;
  final Color text;
  final Color backGround;
  final String image;
  final double height;
  final double width;
  final List<Widget> children;
  @override
  State<Commander_Panel> createState() => _Commander_PanelState();
}

class _Commander_PanelState extends State<Commander_Panel> {
  @override
  Widget build(BuildContext context) {
    List<Widget> Current = [
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
        child: Text("Commander Damage",
            style: TextStyle(
                fontSize: 17,
                color: widget.text,
                decoration: TextDecoration.none)),
      ),
    ];
    Current.addAll(widget.children);
    return Stack(children: Current);
  }
}
