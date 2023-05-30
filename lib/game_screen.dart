import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rps_game/ButtonContainer.dart';
import 'package:rps_game/scoreContainer.dart';
import 'package:rps_game/selectedOptions.dart';
import 'package:rps_game/stateManagement/provider.dart';
import 'gameOptions.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Rock,Paper,Scissors'),),
          backgroundColor: Color(0xFF050C34),
        ),
        backgroundColor: Color(0xFF050C34),
        body: Consumer<StateManager>(
          builder: (context,model,_){
            bool isGameScreen = model.isGameScreen;
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ScoreContainer(),
                  if(isGameScreen == false)
                  Text(
                    "Select your weapon",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22
                    ),
                  ),
                  if(isGameScreen == false)
                    GameOptions(),
                  if(isGameScreen == true)
                    SelectedOptions(),
                  Column(
                    children: [
                      if(isGameScreen == true)
                        Text(
                          model.messages,
                          style: TextStyle(
                              fontSize: 32,
                              color:  Color(0xFF484E85)
                          ),
                        ),
                      SizedBox(height: 10,),
                      if(isGameScreen == true)
                      ButtonConatainer(
                        text: "Play Again",
                        onPressed: (){
                          model.GameScreen();
                        }
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ButtonConatainer(
                        text: 'Rule',
                        onPressed: (){},
                      )
                    ],
                  )
                ],
              ),
            );
          },
        )
      ),
    );
  }
}
