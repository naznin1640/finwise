import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/core/widgets/textform_widget.dart';
import 'package:flutter/material.dart';

class NewpasswordView extends StatelessWidget {
  const NewpasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 160,
        centerTitle: true,
        title: Text(
          "New Password",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            fontFamily: "Poppins",
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          color: ConstantColors.backgroundColor,
          borderRadius: BorderRadius.circular(60),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 118, left: 50),
              child: Text(
                "New Password",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36, right: 38, top: 3),
              child: TextformWidget(
                hintText: "●●●●●●●●",
                suffix: Icon(Icons.remove_red_eye),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 27, left: 50),
              child: Text(
                "Confirm Password",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36, right: 38, top: 3),
              child: TextformWidget(
                hintText: "●●●●●●●●",
                suffix: Icon(Icons.remove_red_eye),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 169, left: 36, right: 37),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ConstantColors.mainGreen,
                  fixedSize: Size(357, 45),
                ),
                onPressed: () {},
                child: Text(
                  "Change Password",
                  style: TextStyle(
                    color: ConstantColors.textClr,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
