import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/features/onboarding/provider/onboarding_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingView1 extends StatelessWidget {
  const OnboardingView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstantColors.mainGreen,
        toolbarHeight: 200,
        title: Center(
          child: Text(
            textAlign: TextAlign.center,
            "Welcome to\nExpense Manager",
            style: TextStyle(
              color: ConstantColors.textClr,
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins",
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: ConstantColors.backgroundColor,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Center(
                  child: SvgPicture.asset("assets/images/Ellipse 185.svg"),
                ),
                Positioned(
                  bottom: 1,
                  child: Image.asset(height: 287, "assets/images/image1.png"),
                ),
              ],
            ),
            SizedBox(height: 60),
            Text(
              "NEXT",
              style: TextStyle(
                color: ConstantColors.textClr,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            Consumer(
  builder: (context, ref, child) {

    final currentPage =
        ref.watch(onboardingProvider);

    return Row(
      mainAxisAlignment:
          MainAxisAlignment.center,

      children: [

        Container(
          margin: EdgeInsets.all(4),

          height: 10,
          width: 10,

          decoration: BoxDecoration(
            shape: BoxShape.circle,

            color: currentPage == 0
                ? ConstantColors.mainGreen
                : Colors.grey,
          ),
        ),

        Container(
          margin: EdgeInsets.all(4),

          height: 10,
          width: 10,

          decoration: BoxDecoration(
            shape: BoxShape.circle,

            color: currentPage == 1
                ? ConstantColors.mainGreen
                : Colors.grey,
          ),
        ),
      ],
    );
  },
),
          ],
        ),
      ),
    );
  }
}
