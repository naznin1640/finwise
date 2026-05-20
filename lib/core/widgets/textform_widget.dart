import 'package:finwise/core/constants/constantcolors.dart';
import 'package:flutter/material.dart';

class TextformWidget extends StatelessWidget {
final  String? hintText;
final Widget? suffix;
final TextEditingController? controller;
final FormFieldValidator<String>? validator;
  const TextformWidget({super.key, required this.hintText, this.suffix, this.controller, this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
                  border:
                  OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20)),
                  filled: true,
                  fillColor: ConstantColors.lighGreen, 
                  hintText: hintText,
                  suffixIcon: suffix,
                  hintStyle: TextStyle(color:ConstantColors.darkGreen, 
                  fontWeight: FontWeight.w400,
                  )
                )
    );
  }
}