import 'package:flutter/material.dart';
import 'package:guessit/settings.dart';

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
              SizedBox(
                width: 256.0,
                child: FlatButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0), side: BorderSide(color: Theme.of(context).accentColor,)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: Text(
                      'Play',
                      style: Theme.of(context).textTheme.headline4.copyWith(color: Theme.of(context).accentColor),
                    ),
                  ),
                  onPressed: () => null,
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: 256.0,
                child: FlatButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0), side: BorderSide(color: Theme.of(context).accentColor,)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: Text(
                      'Settings',
                      style: Theme.of(context).textTheme.headline4.copyWith(color: Theme.of(context).accentColor),
                    ),
                  ),
                  onPressed: () => Navigator.of(context).pushNamed("settings"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
