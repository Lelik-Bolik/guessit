import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionPage extends StatelessWidget {
  final String question;
  final List<String> answers;

  QuestionPage({this.question, this.answers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // Make bottom true and put positioned container to cover the gap (in the black background)
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Flexible(fit: FlexFit.loose, flex: 1, child: QuestionHeader()),
                    Flexible(fit: FlexFit.loose, flex: 6, child: QuestionContainer()),
                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(height: 32),
                          Option(),
                          Option(),
                          Option(),
                          Option(),
                          SizedBox(height: 32),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class QuestionHeader extends StatelessWidget {
  const QuestionHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(child: Text("02/04")),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              width: double.infinity,
              height: 11,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class QuestionContainer extends StatelessWidget {
  const QuestionContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AutoSizeText(
                  "Lorem ipsum dolor sit ametatiferin, consectetur adipiscing? 123123123123123 123 123 123 123123 123 13 123 123 123 123 aleeeeeeeeeeeeeeex 123123 123 123 12 asdf asdf asdf asdf asdf asdfasdfasd fasdf asdf asdf asdf asdf asdf asdfasdf asdf asdf asdfasdf asdf asdf asdf asdf asdf asdf asdf sdf asd asdf asdfa sd asdf asdf asdf sadf asdf asdf sdf asdf asdf asdf sf dfa d fa sf a sd fa df  saas df a sdf a sd fa sd fasd fasdfjaksdjfhj adfhajkshdf jhhf asdfhajfh ajhfkahdkfhasdj Lorem ipsum dolor sit ametatiferin, consectetur adipiscing? 123123123123123 123 123 123 123123 123 13 123 123 123 123 aleeeeeeeeeeeeeeex 123123 123 123 12 asdf asdf asdf asdf asdf asdfasdfasd fasdf asdf asdf asdf asdf asdf asdfasdf asdf asdf asdfasdf asdf asdf asdf asdf asdf asdf asdf sdf asd asdf asdfa sd asdf asdf asdf sadf asdf asdf sdf asdf asdf asdf sf dfa d fa sf a sd fa df  saas df a sdf a sd fa sd fasd fasdfjaksdjfhj adfhajkshdf jhhf asdfhajfh ajhfkahdkfhasdj",
                  maxLines: 10,
                  maxFontSize: 32,
                  minFontSize: 10,
                  wrapWords: false,
                  style:
                      TextStyle(fontSize: 28.ssp, color: Colors.black, height: 1.5),

                    ),
    );
    */
    return Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              //mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                  flex: 6,
                  fit: FlexFit.loose,
                  child: AutoSizeText(
                      "Lorem ipsum dolor sit ametatiferin, consectetur adipiscing?",
                      //maxLines: 8,
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
                  child: Align(alignment: Alignment.centerLeft,child: Text("Lorem ipsum dolor")),
                ),
                Spacer(),
              ],
            ),
          ),
        ));
  }
}

class Option extends StatelessWidget {
  const Option({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
          color: Colors.transparent,
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.circular(8),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(8),
            ),
            child: InkWell(
              onTap: () => print(MediaQuery.of(context).devicePixelRatio),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  "Answer 1",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          )),
    );
  }
}
