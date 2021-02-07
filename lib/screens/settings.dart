import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  static String title = "Settings";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Placeholder(),
            ],
          ),
        ),
      ),
    );
  }
}
