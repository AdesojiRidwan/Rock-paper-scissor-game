import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rps_game/logic.dart';

class StateManager extends ChangeNotifier{
  String rockImage = 'images/rock_btn.png';
  String paperImage = 'images/paper_btn.png';
  String scissorsImage = 'images/scisor_btn.png';
  String? AISelcetedOption;
  int userCount = 0;
  int AICount = 0;
  String? SelectedOption;
  String messages = "";
  bool _isGame = false;
  bool get isGameScreen => _isGame;

  GameScreen(){
    _isGame = false;
    notifyListeners();
  }
  ResetGameScreen(){
    _isGame = true;
    notifyListeners();
  }
  AISelctedRock(){
    AISelcetedOption = rockImage;
    notifyListeners();
  }
  AISelectedPaper(){
    AISelcetedOption = paperImage;
    notifyListeners();
  }
  AISelectedScissors(){
    AISelcetedOption = scissorsImage;
    notifyListeners();
  }
  IncrementUserCount(){
    userCount++;
    notifyListeners();
  }
  IncrementAICount(){
    AICount++;
    notifyListeners();
  }
  UserWon(){
    messages =  "You won";
    notifyListeners();
  }
  AIWon(){
    messages = "AI won";
    notifyListeners();
  }
  NoWinner(){
    messages = "It's a draw";
    notifyListeners();
  }
}