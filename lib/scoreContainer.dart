import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rps_game/stateManagement/provider.dart';

class ScoreContainer extends StatelessWidget {
  const ScoreContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: PlayerScoreContainer(
            text: 'Your Score',
            score: Provider.of<StateManager>(context).userCount.toString(),
          ),
        ),
        SizedBox(width: 20,),
        Expanded(child: PlayerScoreContainer(
          text: 'AI Score',
          score: Provider.of<StateManager>(context).AICount.toString(),
        ))
      ],
    );
  }
}

class PlayerScoreContainer extends StatelessWidget {
  PlayerScoreContainer({
    super.key,
    required this.text,
    required this.score,
  });
  String text;
  String score;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      width: double.infinity,

      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 6, color: Colors.white),
          bottom: BorderSide(width: 6, color: Colors.white),
          right: BorderSide(width: 6, color: Colors.white),
          left: BorderSide(width: 6, color: Colors.white),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
              Text(
                score,
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            ],
          )

        ],
      ),
    );
  }
}
