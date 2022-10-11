import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mtg/GUI/Class/Single_Panel_Counter.dart';
import 'package:mtg/Services/Players.dart';

class Permanent_all_counters extends StatefulWidget {
  Permanent_all_counters({
    required this.text_color,
    required this.backGround,
    required this.height,
    required this.width,
    required this.player,
    required this.children,
  });
  final Player player;
  final Color text_color;
  final Color backGround;
  final double height;
  final double width;
  final List<Widget> children;

  @override
  State<Permanent_all_counters> createState() => _Permanent_all_countersState();
}

class _Permanent_all_countersState extends State<Permanent_all_counters> {
  @override
  Widget build(BuildContext context) {
    List<Widget> Current = [
      Container(
        color: widget.backGround,
      ),
      Positioned(
        // Vedere come fare
        right: 20,
        bottom: 20,
        child: Text(
          "Permanent Counters",
          style: TextStyle(
              fontSize: 17,
              color: widget.text_color,
              decoration: TextDecoration.none),
        ),
      ),
    ];
    Current.addAll(widget.children);
    return Stack(
      children: Current,
    );
  }
}
