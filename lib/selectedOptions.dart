import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rps_game/stateManagement/provider.dart';

class SelectedOptions extends StatelessWidget {
  const SelectedOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Consumer<StateManager>(
      builder: (context,model,child){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(child: Image.asset(model.SelectedOption!),),
                SizedBox(width: 10),
                Text(
                  'VS',
                  style: TextStyle(
                      fontSize: 32,
                      color:  Color(0xFF484E85)
                  ),
                ),
                SizedBox(width: 10),
                Expanded(child: Image.asset(model.AISelcetedOption!),)
              ],
            )
          ],
        );
      },
    );
  }
}
