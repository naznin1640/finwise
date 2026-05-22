import 'package:finwise/core/constants/constantcolors.dart';
import 'package:flutter/material.dart';

class QuickAnalysisView extends StatelessWidget {
  const QuickAnalysisView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Quickly Analysis",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontFamily: "Poppins",
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 25,
              foregroundColor: ConstantColors.backgroundColor,
              child: Icon(
                size: 30,
                Icons.notifications_outlined,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assets/images/Ellipse 182.png"),
                          Positioned(
                            left: 31,
                            child: Image.asset("assets/images/Ellipse 183.png"),
                          ),
                          Positioned(
                            top: 20,
                            left: 13,
                            child: Image.asset("assets/images/Car.png"),
                          ),
                        ],
                      ),
                      Text(
                        "Savings\non Goal",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 1,
                  height: 108,
                  decoration: BoxDecoration(color: ConstantColors.white),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 20),
                          child: Image.asset("assets/images/Salary.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "  Revenue Last Week",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "  ₹4.000.00",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(11),
                      child: Container(
                        width: 161,
                        height: 1,
                        color: ConstantColors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Image.asset("assets/images/Food.png"),
                        ),
                        Column(
                          children: [
                            Text(
                              "  Food Last Week",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "-₹100.00",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: ConstantColors.oceanBlue,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              // height: double.infinity,
              decoration: BoxDecoration(
                color: ConstantColors.backgroundColor,
                borderRadius: BorderRadius.circular(60)
              ),
            ),
          )
        ],
      ),
    );
  }
}
