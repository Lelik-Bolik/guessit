import 'package:flutter/material.dart';

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
