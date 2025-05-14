import 'package:flutter/material.dart';

var textColor = Colors.white;

class StyledText extends StatelessWidget{

  const StyledText( this.text, {super.key});

   final String text;

  @override
  Widget build(context){
    return Text(
      text,
      style: TextStyle(
            color: textColor, 
            fontSize: 28.0),
        );
  }    
}