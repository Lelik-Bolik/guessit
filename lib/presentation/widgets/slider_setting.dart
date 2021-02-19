import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guessit/presentation/widgets/guessit_sliding_segmented_control.dart';

/// This is a widget for creating slider type settings. We need a
/// title (meaning the name of the setting that we want),
/// tabs (Map with int, Text that will be displayed)
/// onValue (the returned function from the caller)
/// see screens/pregame.dart , line 32 on how to use

class SettingSlider extends StatelessWidget {
  SettingSlider(
      {@required this.title,
      @required this.tabs,
      @required this.onValue,
      @required this.groupValue});
  final String title;
  final Map<int, Widget> tabs;
  final Function onValue;
  final int groupValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            title,
            style: TextStyle(fontSize: 24.ssp),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        //we use the already implemeted GuessIt.. which is a modified Capertino..
        //type widget, see widgets/guessit_sliding_segmented_control.dart
        GuessItSlidingSegmentedControl(
          groupValue: groupValue,
          cornerRadius: 32,
          children: tabs,
          thumbColor: Colors.blue[300],
          onValueChanged: (i) {
            onValue(i);
          },
        ),
      ]),
    );
  }
}
