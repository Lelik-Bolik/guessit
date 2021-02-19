import 'package:flutter/material.dart';

/// An option/answer for the question.
///
/// A clickable `Material` that executes [onTap] when pressed. Only a [text] is displayed.
/// Index is used to keep track of which options have been selected.
class Option extends StatelessWidget {
  Option({
    Key key,
    @required this.index,
    @required this.text,
    @required this.onTap,
  }) : super(key: key);

  /// The index of the widget within the [OptionsList].
  final int index;

  /// The text to be displayed inside the widget.
  final String text;

  /// The callback `Function` that is executed when the widget is pressed.
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
        // Color defaults to white. We need Material for `InkWell` to be visible.
        color: Colors.transparent,
        // Clip Material so that InkWell does not bleed off of the rounded corners.
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.circular(8),
        // Container for the outline of the button, since material doesn't have decoration.
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(8),
          ),
          child: InkWell(
            onTap: onTap,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  text,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
        ));
  }
}
