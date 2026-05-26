import 'package:finwise/core/constants/constantcolors.dart';
import 'package:flutter/material.dart';

class FoodWidget extends StatelessWidget {
   FoodWidget({super.key, required this.color, required this.title, required this.subtitle, required this.price});

  Color color;
  String title;
  String subtitle;
  String price;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(22)
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 13, left: 21, bottom: 13, right: 21),
              child: Image.asset("assets/images/Food.png", color: ConstantColors.backgroundColor,),
            ),
          ), 
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                ),),
                Text(subtitle,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: ConstantColors.oceanBlue
                ),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Text(
              price,
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: ConstantColors.oceanBlue
            ),),
          )
        ],
      ),
    );
  }
}