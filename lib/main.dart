import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:guessit/presentation/screens/settings.dart';
import 'package:guessit/presentation/widgets/menu_button.dart';
import 'package:guessit/config/themes.dart';
import 'package:guessit/presentation/screens/question.dart';
import 'package:guessit/presentation/screens/pregame.dart';
import 'package:provider/provider.dart';

import 'data/models/game_preferences.dart';

void main() {
  runApp(GuessItApp());
}

class GuessItApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      allowFontScaling: true,
      builder: () => ChangeNotifierProvider<GamePreferences>(
        create: (context) => GamePreferences(),
        child: MaterialApp(
          title: 'GuessIt',
          theme: Styles.lightThemeData,
          darkTheme: Styles.darkThemeData,
          initialRoute: "/",
          routes: {
            "/": (context) => MyHomePage(title: "Guess it"),
            "play": (context) => QuestionPage(
                  question: "Question",
                  answers: ["Answer", "Answer 2"],
                ),
            "pregame": (context) => PreGamePage(),
            "settings": (context) => SettingsPage(),
            "rules": (context) => MyHomePage(title: "Guess it"),
          },
        ),
      ),
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
              MenuButton(
                  label: "Play",
                  onPressed: () => Navigator.of(context).pushNamed("play")),
              SizedBox(height: 16),
              MenuButton(
                  label: "Setting",
                  onPressed: () => Navigator.of(context).pushNamed("settings")),
              MenuButton(
                  label: "Pregame",
                  onPressed: () => Navigator.of(context).pushNamed("pregame")),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
