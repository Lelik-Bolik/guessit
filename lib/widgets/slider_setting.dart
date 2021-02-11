import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guessit/widgets/guessit_sliding_segmented_control.dart';

/// This is a widget for creating slider type settings. We need a
/// title (meaning the name of the setting that we want),
/// tabs (Map with int, Text that will be displayed)
/// onValue (the returned function from the caller)
/// see screens/pregame.dart , line 32 on how to use

class SettingSlider extends StatefulWidget {
  SettingSlider(
      {@required this.title, @required this.tabs, @required this.onValue});
  final String title;
  final Map<int, Widget> tabs;
  final Function onValue;

  @override
  _SettingSliderState createState() => _SettingSliderState();
}

class _SettingSliderState extends State<SettingSlider> {
  //this is the value which changes the slider chosen setting
  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            widget.title,
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
          children: widget.tabs,
          thumbColor: Colors.blue[300],
          onValueChanged: (i) {
            setState(() {
              groupValue = i;
            });
            //here we send the chosen option i to save it
            //as we choose with the onValue function
            widget.onValue(i);
          },
        ),
      ]),
    );
  }
}
