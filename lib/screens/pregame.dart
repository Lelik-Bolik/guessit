import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PreGamePage extends StatefulWidget {
  @override
  _PreGamePageState createState() => _PreGamePageState();
}

class _PreGamePageState extends State<PreGamePage> {
  int segmentedTimeGroupValue = 0;
  int segmentedTeamGroupValue = 0;
  int segmentedPlayerGroupValue = 0;
  int segmentedRoundGroupValue = 0;

  final Map<int, Widget> teamTabs = const <int, Widget>{
    0: Text("2 team"),
    1: Text("3 teams"),
    2: Text("4 teams"),
    3: Text("5 teams"),
  };

  final Map<int, Widget> timeTabs = const <int, Widget>{
    0: Text("10"),
    1: Text("20"),
    2: Text("30"),
    3: Text("40"),
    4: Text("50"),
    5: Text("60"),
  };

  final Map<int, Widget> playerTabs = const <int, Widget>{
    0: Text("2 players"),
    1: Text("3 players"),
    2: Text("4 players"),
    3: Text("5 players"),
    4: Text("6 players"),
    5: Text("7 players"),
  };

  final Map<int, Widget> roundTabs = const <int, Widget>{
    0: Text("5"),
    1: Text("10"),
    2: Text("15"),
    3: Text("20"),
    4: Text("25"),
    5: Text("30"),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 100),
            Text('Number of teams'),
            CupertinoSlidingSegmentedControl(
                groupValue: segmentedTeamGroupValue,
                children: teamTabs,
                thumbColor: Colors.blue[300],
                onValueChanged: (i) {
                  setState(() {
                    segmentedTeamGroupValue = i;
                  });
                }),
            SizedBox(height: 80),
            Text('Number of players'),
            CupertinoSlidingSegmentedControl(
                groupValue: segmentedPlayerGroupValue,
                children: playerTabs,
                thumbColor: Colors.blue[300],
                onValueChanged: (i) {
                  setState(() {
                    segmentedPlayerGroupValue = i;
                  });
                }),
            SizedBox(height: 80),
            Text('Number of Rounds'),
            CupertinoSlidingSegmentedControl(
                groupValue: segmentedRoundGroupValue,
                children: roundTabs,
                thumbColor: Colors.blue[300],
                onValueChanged: (i) {
                  setState(() {
                    segmentedRoundGroupValue = i;
                  });
                }),
            SizedBox(height: 80),
            Text('Seconds of each round'),
            CupertinoSlidingSegmentedControl(
                groupValue: segmentedTimeGroupValue,
                children: timeTabs,
                thumbColor: Colors.blue[300],
                onValueChanged: (i) {
                  setState(() {
                    segmentedTimeGroupValue = i;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
