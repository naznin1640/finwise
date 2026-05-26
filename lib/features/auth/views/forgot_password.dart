import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/core/widgets/button_widget.dart';
import 'package:finwise/core/widgets/textform_widget.dart';
import 'package:finwise/features/auth/views/create_account_view.dart';
import 'package:finwise/features/auth/views/security_pin.dart';
import 'package:finwise/shared/services/auth_services.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 160,
        centerTitle: true,
        title: Text(
          "Forgot Password",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          color: ConstantColors.backgroundColor,
          borderRadius: BorderRadius.circular(60),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 32),
                child: Text(
                  "Reset Password?",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 36),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "League Spartan",
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, top: 40),
                child: Text(
                  "Enter Email Address",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, top: 8, right: 36),
                child: TextformWidget(hintText: "example@example.com"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 120, right: 120),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ConstantColors.mainGreen,
                    fixedSize: Size(207, 45),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecurityPin()),
                    );
                  },
                  child: Text(
                    "Next Step",
                    style: TextStyle(
                      color: ConstantColors.textClr,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 120, right: 120),
                child: ButtonWidget(
                  fontSize: 20,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateAccountView(),
                      ),
                    );
                  },
                  text: "Sign Up",
                  backgroundColor: ConstantColors.lighGreen,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14),
                child: Center(child: Text("or signup with")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/vectors/Facebook.png"),
                    SizedBox(width: 17),
                    GestureDetector(
                        onTap: () async{
                          await AuthServices().signInWithGoogle(context);
                        },
                      child: Image.asset("assets/vectors/Google.png")),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CreateAccountView(),
                        ),
                      );
                    },
                    child: Text("Signup?"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
