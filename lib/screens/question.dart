import 'package:flutter/material.dart';
import 'package:guessit/widgets/option.dart';
import 'package:guessit/widgets/question_container.dart';
import 'package:guessit/widgets/question_header.dart';

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
                    Flexible(
                        fit: FlexFit.loose,
                        flex: 1,
                        child: QuestionHeader()),
                    Flexible(
                        fit: FlexFit.loose,
                        flex: 6,
                        child: QuestionContainer()),
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
