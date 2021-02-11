import 'package:flutter/material.dart';

//Options for how many teams, before the game starts
const Map<int, Widget> teamTabs = const <int, Widget>{
  0: Text("2"),
  1: Text("3"),
  2: Text("4"),
  3: Text("5"),
};

//Options for seconds of each round, before the game starts
const Map<int, Widget> timeTabs = const <int, Widget>{
  0: Text("10"),
  1: Text("20"),
  2: Text("30"),
  3: Text("40"),
  4: Text("50"),
  5: Text("60"),
};

//Options for number of players in each team, before the game starts
const Map<int, Widget> playerTabs = const <int, Widget>{
  0: Text("2"),
  1: Text("3"),
  2: Text("4"),
  3: Text("5"),
  4: Text("6"),
  5: Text("7"),
};

//Options for number of rounds, before the game starts
const Map<int, Widget> roundTabs = const <int, Widget>{
  0: Text("5"),
  1: Text("10"),
  2: Text("15"),
  3: Text("20"),
  4: Text("25"),
  5: Text("30"),
};

//Options for number of answers, before the game starts
const Map<int, Widget> answerTabs = const <int, Widget>{
  0: Text("3"),
  1: Text("4"),
  2: Text("5"),
  3: Text("6"),
};
