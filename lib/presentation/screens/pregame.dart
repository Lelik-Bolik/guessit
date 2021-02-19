import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:guessit/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:guessit/config/constants.dart';
import 'package:guessit/data/models/game_preferences.dart';
import 'package:guessit/presentation/widgets/slider_setting.dart';

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
  int _segmentedAnswerGroupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //to i tha perniete sta settings kai tha allazei analogos me tin epilogi.
            Consumer<GamePreferences>(builder: (context, state, _) {
              return SettingSlider(
                  title: "Number of Teams",
                  groupValue: state.teamIndex,
                  tabs: teamTabs,
                  onValue: (i) =>
                      context.read<GamePreferences>().teamIndex = i);
            }),
            Consumer<GamePreferences>(builder: (context, state, _) {
              return SettingSlider(
                  title: "Number of Players",
                  groupValue: state.playerIndex,
                  tabs: playerTabs,
                  onValue: (i) =>
                      context.read<GamePreferences>().playerIndex = i);
            }),
            Consumer<GamePreferences>(builder: (context, state, _) {
              return SettingSlider(
                  title: "Number of Rounds",
                  groupValue: state.roundIndex,
                  tabs: roundTabs,
                  onValue: (i) =>
                      context.read<GamePreferences>().roundIndex = i);
            }),
            Consumer<GamePreferences>(builder: (context, state, _) {
              return SettingSlider(
                  groupValue: state.timerIndex,
                  title: "Seconds of each Round",
                  tabs: timeTabs,
                  onValue: (i) =>
                      context.read<GamePreferences>().timerIndex = i);
            }),

            Consumer<GamePreferences>(builder: (context, state, _) {
              return SettingSlider(
                  groupValue: state.answerIndex,
                  title: "Number of Answers Required",
                  tabs: answerTabs,
                  onValue: (i) =>
                      context.read<GamePreferences>().answerIndex = i);
            }),

            SizedBox(height: 26),
            Consumer<GamePreferences>(builder: (context, state, _) {
              return Center(child: Text("${state.getNumOfPlayers()}"));
            }),
          ],
        ),
      ),
    );
  }
}
