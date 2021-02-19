import 'package:flutter/material.dart';
import 'package:guessit/config/constants.dart';

class GamePreferences with ChangeNotifier {
  int _teamIndex = 0;
  int _playerIndex = 0;
  int _roundIndex = 0;
  int _timerIndex = 0;
  int _answerIndex = 0;

  get answerIndex => _answerIndex;

  set answerIndex(int index) {
    _answerIndex = index;
    notifyListeners();
  }

  get playerIndex => _playerIndex;

  set playerIndex(int index) {
    _playerIndex = index;
    notifyListeners();
  }

  get roundIndex => _roundIndex;

  set roundIndex(int index) {
    _roundIndex = index;
    notifyListeners();
  }

  get teamIndex => _teamIndex;

  set teamIndex(int index) {
    _teamIndex = index;
    notifyListeners();
  }

  get timerIndex => _timerIndex;

  set timerIndex(int index) {
    _timerIndex = index;
    notifyListeners();
  }

  int getNumOfAnswers() {
    return answerValues[_answerIndex];
  }

  int getNumOfPlayers() {
    return playerValues[_playerIndex];
  }

  int getNumOfRound() {
    return roundValues[_teamIndex];
  }

  int getNumOfTeams() {
    return teamValues[_teamIndex];
  }

  int getTimer() {
    return timeValues[_timerIndex];
  }
}
