import 'package:finwise/core/constants/constantcolors.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({
    super.key,
    required this.image,
    this.padding,
    required this.text,
    this.ontap
  });
  Widget image;
  double? padding;
  String text;
  VoidCallback? ontap;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: ontap,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: ConstantColors.lightBlue,
            ),
            child: image,
          ),
        ),
        Text(text,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500))
      ],
    );
  }
}
