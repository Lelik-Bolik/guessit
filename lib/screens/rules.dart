import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:guessit/config/themes.dart';

class RulesPage extends StatelessWidget {
  static String title = "Rules";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    text: 'Step 1',
                    style: Styles.boldBodyText(context),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            ': Players split up into 2 teams of equal members and they press play choosing the amount of rounds',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
                RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    text: 'Step 2',
                    style: Styles.boldBodyText(context),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            ': The teams take turns to play. The team that plays first selects a member. This member will have the device and will be given a random generated category and will be asked to enter 5 words of that category that come to his mind',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
                RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    text: 'Step 3',
                    style: Styles.boldBodyText(context),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            ": The rest of the team have 1 minute to guess those 5 words, while knowing the category they are playing in, without the help of the player that entered the words. When a word is found, the player taps on the word and it awards the team 1 point. When time is up, the other team gets the device and repeat the process. When that team's time is up that concludes round 1 and it is the first team's time to play but they cannot choose the same player to enter the words. ",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
                RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    text: 'Winner is ',
                    style: Styles.boldBodyText(context),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            ': The team that has accumulated more points at the end of the last round',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
