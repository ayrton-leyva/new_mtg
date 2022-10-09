import 'package:flutter/material.dart';

class Player {
  int number_players;
  int lifepoints;

  // Special counters
  int storm = 0;
  int energy = 0;
  int experience = 0;
  int poison = 0;

  // mana counters

  int red = 0;
  int blue = 0;
  int black = 0;
  int white = 0;
  int green = 0;
  int blank = 0;

  late List<int> commander_damage;

  Player({required this.lifepoints, required this.number_players});

  void set_up() {
    // prepare values depending on the number of players
    for (int i = 0; i < number_players; i++) {
      commander_damage.add(0);
    }
  }

  void reset_game() {
    // Special counters
    storm = 0;
    energy = 0;
    experience = 0;
    poison = 0;

    // mana counters

    red = 0;
    blue = 0;
    black = 0;
    white = 0;
    green = 0;
    blank = 0;
    // commander damage reset
    for (int i = 0; i < number_players; i++) {
      commander_damage[i] = 0;
    }
  }
}
