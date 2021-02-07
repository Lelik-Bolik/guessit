import 'package:flutter/material.dart';
import 'package:guessit/widgets/options_list.dart';
import 'package:guessit/widgets/question_container.dart';
import 'package:guessit/widgets/question_header.dart';

/// The screen/page that is displayed during gameplay.
///
/// This page is displayed after the user has selected the answers to the question,
/// and is used to select the valid answers of the team-members (as well as show the question).
class QuestionPage extends StatelessWidget {
  QuestionPage({this.question, this.answers});

  /// The question that currently playing team must answer.
  final String question;

  /// A list of the proposed answers.
  final List<String> answers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Stack that contains a `Container` and a `SafeArea`.
      // The Container fills the SafeArea at the bottom of the screen.
      // with background color (black for light theme, white for dark theme).
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).padding.bottom,
              color: Colors.black,
            ),
          ),
          SafeArea(
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
                          child: OptionsList(
                            // TODO: Set `options` programmatically
                            options: [
                              "Option 1",
                              "Selection 2",
                              "Choice 3",
                              "Option 4",
                              "Choice 3",
                            ],
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
