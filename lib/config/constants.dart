import 'package:flutter/material.dart';

//Options for how many teams, before the game starts
const Map<int, Widget> teamTabs = const {
  0: Text("2"),
  1: Text("3"),
  2: Text("4"),
  3: Text("5"),
};

const Map<int, int> teamValues = const {
  0: 2,
  1: 3,
  2: 4,
  3: 5,
};

//Options for seconds of each round, before the game starts
const Map<int, Widget> timeTabs = const {
  0: Text("10"),
  1: Text("20"),
  2: Text("30"),
  3: Text("40"),
  4: Text("50"),
  5: Text("60"),
};

const Map<int, int> timeValues = const {
  0: 10,
  1: 20,
  2: 30,
  3: 40,
  4: 50,
  5: 60,
};

//Options for number of players in each team, before the game starts
const Map<int, Widget> playerTabs = const {
  0: Text("2"),
  1: Text("3"),
  2: Text("4"),
  3: Text("5"),
  4: Text("6"),
  5: Text("7"),
};

const Map<int, int> playerValues = const {
  0: 2,
  1: 3,
  2: 4,
  3: 5,
  4: 6,
  5: 7,
};

//Options for number of rounds, before the game starts
const Map<int, Widget> roundTabs = const {
  0: Text("5"),
  1: Text("10"),
  2: Text("15"),
  3: Text("20"),
  4: Text("25"),
  5: Text("30"),
};

const Map<int, int> roundValues = const {
  0: 5,
  1: 10,
  2: 15,
  3: 20,
  4: 25,
  5: 30,
};

//Options for number of answers, before the game starts
const Map<int, Widget> answerTabs = const {
  0: Text("3"),
  1: Text("4"),
  2: Text("5"),
  3: Text("6"),
};

const Map<int, int> answerValues = const {
  0: 3,
  1: 4,
  2: 5,
  3: 6,
};
