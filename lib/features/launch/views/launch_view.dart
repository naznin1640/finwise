import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/features/onboarding/view/onboarding_view.dart';
import 'package:flutter/material.dart';

class LaunchView extends StatelessWidget {
  const LaunchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/vectors/Vector (2).png",
              color: ConstantColors.mainGreen,
            ),
          ),
          Text(
            "FinWise",
            style: TextStyle(
              fontFamily: "Poppins",
              color: ConstantColors.mainGreen,
              fontSize: 52,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "League Spartan",
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 40),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ConstantColors.mainGreen,
              fixedSize: Size(207, 45),
            ),
            onPressed: () {},
            child: Text(
              "Log in",
              style: TextStyle(
                color: ConstantColors.textClr,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: 12),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ConstantColors.lighGreen,
              fixedSize: Size(207, 45),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => OnboardingView()));
            },
            child: Text(
              "Sign Up",
              style: TextStyle(
                color: ConstantColors.textClr,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: 12),
          TextButton(
            onPressed: () {},
            child: Text(
              "Forgot Password?",
              style: TextStyle(
                color: ConstantColors.textClr,
                fontFamily: "League Spartan",
                fontWeight: FontWeight.w600,
                fontSize: 14
              ),
            ),
          ),
        ],
      ),
    );
  }
}
