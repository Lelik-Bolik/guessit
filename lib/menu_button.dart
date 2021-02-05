import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String label;
  final double width;
  final double height;
  final Function onPressed;

  MenuButton({this.label, this.onPressed, this.width = 256.0, this.height = 64.0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: this.width,
        child: FlatButton(
            onPressed: onPressed,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
                side: BorderSide(
                  color: Theme.of(context).accentColor,
                )),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                label,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: Theme.of(context).accentColor),
              ),
            )));
  }
}
