import 'package:flutter/material.dart';

class ButtonConatainer extends StatelessWidget {
  ButtonConatainer({Key? key,required this.text,required this.onPressed}) : super(key: key);
  String text;
  void Function()  onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border(
                  top: BorderSide(width: 2, color: Colors.white),
                  bottom: BorderSide(width: 2, color: Colors.white),
                  right: BorderSide(width: 2, color: Colors.white),
                  left: BorderSide(width: 2, color: Colors.white),
                )
            ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 26),
          ),
        ),
      ),
    );
  }
}
