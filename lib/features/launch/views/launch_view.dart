import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/core/widgets/button_widget.dart';
import 'package:finwise/features/auth/views/create_account_view.dart';
import 'package:finwise/features/auth/views/forgot_password.dart';
import 'package:finwise/features/auth/views/welcome_view.dart';
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
         ButtonWidget(
          fontSize: 20,
          onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeView()));
          } , 
          text: "Log in", 
          backgroundColor: ConstantColors.mainGreen),

          SizedBox(height: 12),

           ButtonWidget(
            fontSize: 20,
          onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccountView()));
          } , 
          text: "Sign Up", 
          backgroundColor: ConstantColors.lighGreen),
          SizedBox(height: 12),
          TextButton(
            onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => ForgotPassword()));
            },
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
