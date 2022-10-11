import 'package:flutter/material.dart';
import 'package:mtg/Services/Players.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LifePanel extends StatefulWidget {
  const LifePanel(
      {required this.height,
      required this.width,
      required this.image,
      required this.player,
      required this.backGround,
      required this.text,
      super.key});

  final Color backGround;
  final Color text;
  final Player player;
  final String image;
  final double height;
  final double width;

  @override
  State<LifePanel> createState() => _LifePanelState();
}

class _LifePanelState extends State<LifePanel> {
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
            child: SvgPicture.asset(
              widget.image,
              height: 3 * widget.width / 5,
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
                    widget.player.lifepoints += 1;
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
                        widget.player.lifepoints -= 1;
                      },
                    );
                  },
                )),
          ],
        ),
        // Counter
        Center(
          child: Text(get_life(widget.player),
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
          child: Text("Life Points",
              style: TextStyle(
                  fontSize: 17,
                  color: widget.text,
                  decoration: TextDecoration.none)),
        ),
      ],
    );
  }

  String get_life(Player player) {
    int life = player.lifepoints;
    for (int i = 0; i < player.commander_damage.length; i++) {
      life -= player.commander_damage[i];
    }
    return life.toString();
  }
}
