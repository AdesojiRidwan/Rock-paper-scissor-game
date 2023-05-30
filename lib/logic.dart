

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rps_game/stateManagement/provider.dart';

 // int userCount = 0;
 // int AICount = 0;
   int? winner;
void checkWinner(BuildContext context,int userChoice){
  Random random = Random();
  int AIChoice = random.nextInt(3) ;


  if(userChoice == 1){
    //user selected rock
    if(AIChoice == 1){
      context.read<StateManager>().AISelctedRock();
      winner = 0;
    }else if(AIChoice == 2){
      context.read<StateManager>().AISelectedPaper();
      winner = 1;
      context.read<StateManager>().IncrementAICount();
    }else{
      context.read<StateManager>().AISelectedScissors();
      winner = 2;
      context.read<StateManager>().IncrementUserCount();
    }
  }else if(userChoice == 2){
    //user selected paper
    if(AIChoice == 1){
      context.read<StateManager>().AISelctedRock();
      winner = 2;
      context.read<StateManager>().IncrementUserCount();
    }else if(AIChoice == 2){
      context.read<StateManager>().AISelectedPaper();
      winner = 0;
    }else if (AIChoice == 3){
      context.read<StateManager>().AISelectedPaper();
      winner = 1;
      context.read<StateManager>().IncrementAICount();
    }
  }else if(userChoice == 3){
    //user selected scissors
    if(AIChoice == 1){
      context.read<StateManager>().AISelctedRock();
      winner = 1;
      context.read<StateManager>().IncrementAICount();
    }else if(AIChoice == 2){
      context.read<StateManager>().AISelectedPaper();
      winner = 2;
      context.read<StateManager>().IncrementUserCount();
    }else if (AIChoice == 3){
      context.read<StateManager>().AISelectedPaper();
      winner = 0;
    }
  }

  String messages;
  if(winner == 0){
    context.read<StateManager>().NoWinner();
  }else if(winner == 1){
    context.read<StateManager>().AIWon();
  }else if(winner == 2){
    context.read<StateManager>().UserWon();
  }

}