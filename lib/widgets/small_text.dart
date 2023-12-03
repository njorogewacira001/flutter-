import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
   Color? color;
  final String text;
  double size;
  double height;
  
   SmallText({super.key, this.color = const Color(0xFF332d2b),
   required this.text,
   this.size=16,
   this.height=1.8
   
   });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size,
        height: height,
        fontWeight: FontWeight.bold
        
      ),

    );
  }
}