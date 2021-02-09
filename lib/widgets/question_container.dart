import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionContainer extends StatelessWidget {
  const QuestionContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              flex: 6,
              fit: FlexFit.loose,
              child: AutoSizeText(
                "Lorem ipsum dolor sit ametatiferin, consectetur adipiscing?",
                maxLines: 6,
                maxFontSize: 32,
                minFontSize: 10,
                wrapWords: false,
                style: TextStyle(
                    fontSize: 28.ssp, color: Colors.black, height: 1.5),
              ),
            ),
            Spacer(),
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Lorem ipsum dolor")),
            ),
            Spacer(),
          ],
        ),
      ),
    ));
  }
}
