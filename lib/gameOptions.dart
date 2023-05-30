import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rps_game/logic.dart';
import 'package:rps_game/stateManagement/provider.dart';

class GameOptions extends StatelessWidget {
  GameOptions({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Consumer<StateManager>(
      builder: (context,model,child){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageOptions(imageAddress: model.rockImage,function: (){
              model.ResetGameScreen();
              model.SelectedOption = model.rockImage;
              // model.AISelcetedOption;
              checkWinner(context, 1);
            },),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ImageOptions(imageAddress: model.paperImage,function: (){
                  model.ResetGameScreen();
                  model.SelectedOption = model.paperImage;
                  checkWinner(context, 2);
                },),
                SizedBox(width: 20,),
                ImageOptions(imageAddress: model.scissorsImage,function: (){
                  model.ResetGameScreen();
                  model.SelectedOption = model.scissorsImage;
                  checkWinner(context, 3);
                },)
              ],
            )
          ],
        );
      }
    );
  }
}

class ImageOptions extends StatelessWidget {
  ImageOptions({
    super.key,
    required this.imageAddress,
    required this.function
  });
  String imageAddress;
  final function;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Image.asset(imageAddress),
    );
  }
}
