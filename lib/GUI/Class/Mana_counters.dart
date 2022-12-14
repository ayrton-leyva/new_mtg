import 'package:flutter/material.dart';

class Mana_counters extends StatefulWidget {
  Mana_counters(
      {required this.text_color,
      required this.backGround,
      required this.height,
      required this.width,
      required this.children});
  final Color text_color;
  final Color backGround;
  final double height;
  final double width;
  final List<Widget> children;

  @override
  State<Mana_counters> createState() => _Mana_countersState();
}

class _Mana_countersState extends State<Mana_counters> {
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
        child: Text("Mana Counters",
            style: TextStyle(
                fontSize: 17,
                color: widget.text_color,
                decoration: TextDecoration.none)),
      ),
    ];
    Current.addAll(widget.children);
    return Stack(
      children: Current,
    );
  }
}
