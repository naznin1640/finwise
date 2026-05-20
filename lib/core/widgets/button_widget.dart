import 'package:finwise/core/constants/constantcolors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
   ButtonWidget({super.key, 
   required this.onPressed, 
   required this.text, 
   required this.backgroundColor});

  VoidCallback onPressed;
  String text;
  Color backgroundColor;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        fixedSize: Size(210, 45)
      ),
      onPressed: onPressed,
     child: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Text(text, style: TextStyle(
        color: ConstantColors.textClr,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
       ),),
     ));
  }
}