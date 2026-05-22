import 'package:finwise/core/constants/constantcolors.dart';
import 'package:flutter/material.dart';

class TabbarView extends StatelessWidget {
  const TabbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        spacing: 24,
        children: [
          Row(
            spacing: 10,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: ConstantColors.lightBlue,
                  ),
                  Positioned(
                    left: 10,
                    top: 10,
                    child: Image.asset(
                      "assets/images/Salary.png",
                      color: ConstantColors.white,
                      height: 22,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Salary",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "18:27 - April 30",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: ConstantColors.oceanBlue,
                    ),
                  ),
                ],
              ),
              Container(color: ConstantColors.mainGreen, height: 35, width: 1),
              Text(
                "Monthly",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
              Container(color: ConstantColors.mainGreen, height: 35, width: 1),
              Text(
                "₹4.000,00",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                ),
              ),
            ],
          ),
          Row(
            spacing: 10,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: ConstantColors.blue,
                  ),
                  Positioned(
                    left: 15,
                    top: 10,
                    child: Image.asset(
                      "assets/vectors/image.png",
                      color: ConstantColors.white,
                      height: 22,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Groceries",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "17:00 - April 24",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: ConstantColors.oceanBlue,
                    ),
                  ),
                ],
              ),
              Container(color: ConstantColors.mainGreen, height: 35, width: 1),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  "Pantry",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                ),
              ),
              Container(color: ConstantColors.mainGreen, height: 35, width: 1),
              Text(
                "-₹100,00",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                  color: ConstantColors.oceanBlue,
                ),
              ),
            ],
          ),
          Row(
            spacing: 10,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: ConstantColors.oceanBlue,
                  ),
                  Positioned(
                    left: 10,
                    top: 10,
                    child: Image.asset(
                      "assets/vectors/iconRent.png",
                      color: ConstantColors.white,
                      height: 22,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rent",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "8:30 - April 15",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: ConstantColors.oceanBlue,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: ConstantColors.mainGreen,
                  height: 35,
                  width: 1,
                ),
              ),
              Text(
                "Rent",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  color: ConstantColors.mainGreen,
                  height: 35,
                  width: 1,
                ),
              ),
              Text(
                "-₹674,40",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                  color: ConstantColors.oceanBlue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
