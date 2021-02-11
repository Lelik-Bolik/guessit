import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guessit/widgets/guessit_sliding_segmented_control.dart';

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
        GuessItSlidingSegmentedControl(
          groupValue: groupValue,
          cornerRadius: 32,
          children: widget.tabs,
          thumbColor: Colors.blue[300],
          onValueChanged: (i) {
            setState(() {
              groupValue = i;
            });
            widget.onValue(i);
          },
        ),
      ]),
    );
  }
}
