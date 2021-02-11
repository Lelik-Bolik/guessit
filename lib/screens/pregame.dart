import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:guessit/config/constants.dart';
import 'package:guessit/widgets/slider_setting.dart';

class PreGamePage extends StatefulWidget {
  @override
  _PreGamePageState createState() => _PreGamePageState();
}

class _PreGamePageState extends State<PreGamePage> {
  static String title = "Preferences";

  int _segmentedTimeGroupValue = 0;
  int _segmentedTeamGroupValue = 0;
  int _segmentedPlayerGroupValue = 0;
  int _segmentedRoundGroupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //to i tha perniete sta settings kai tha allazei analogos me tin epilogi.
            SettingSlider(
                title: "Number of Teams",
                tabs: teamTabs,
                onValue: (i) => _segmentedTeamGroupValue = i),
            SettingSlider(
                title: "Number of Players",
                tabs: playerTabs,
                onValue: (i) => _segmentedPlayerGroupValue = i),
            SettingSlider(
                title: "Number of Rounds",
                tabs: roundTabs,
                onValue: (i) => _segmentedRoundGroupValue = i),
            SettingSlider(
                title: "Seconds of each Round",
                tabs: timeTabs,
                onValue: (i) => _segmentedTimeGroupValue = i),
          ],
        ),
      ),
    );
  }
}
