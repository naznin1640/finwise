import 'package:finwise/core/constants/constantcolors.dart';
import 'package:flutter/material.dart';

class ContainerWidgets extends StatelessWidget {
  Icon icon;
  String text;
   ContainerWidgets({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 38, right: 19),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: ConstantColors.lightBlue,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 12,
                left: 17,
                right: 17,
                bottom: 12,
              ),
              child: icon
            ),
          ),
        ),
        Text(text, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),)
      ],
    );
  }
}
