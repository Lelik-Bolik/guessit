import 'package:flutter/material.dart';
import 'package:guessit/settings.dart';
import 'package:guessit/menu_button.dart';

void main() {
  runApp(GuessItApp());
}

class GuessItApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GuessIt',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => MyHomePage(title: "Guess it"),
        "settings": (context) => SettingsPage(),
        "rules": (context) => MyHomePage(title: "Guess it"),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({this.title});

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
              SizedBox(height: 16),
              MenuButton(label: "Play", onPressed: () => null),
              SizedBox(height: 16),
              MenuButton(
                  label: "Setting",
                  onPressed: () => Navigator.of(context).pushNamed("settings")),
            ],
          ),
        ),
      ),
    );
  }
}
