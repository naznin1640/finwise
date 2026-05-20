import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/core/widgets/button_widget.dart';
import 'package:finwise/core/widgets/textform_widget.dart';
import 'package:finwise/features/auth/views/welcome_view.dart';
import 'package:finwise/features/home/views/home_view.dart';
import 'package:finwise/features/landing/view/landing_view.dart';
import 'package:flutter/material.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 160,
        centerTitle: true,
        title: Text(
          "Create Account",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          color: ConstantColors.backgroundColor,
          borderRadius: BorderRadius.circular(60),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 27, left: 50),
                  child: Text(
                    "Full Name",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 36, right: 38, top: 3),
                  child: TextformWidget(hintText: "example@example.com"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 27, left: 50),
                  child: Text(
                    "Email",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 36, right: 38, top: 3),
                  child: TextformWidget(hintText: "example@example.com"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 27, left: 50),
                  child: Text(
                    "Mobile Number",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 36, right: 38, top: 3),
                  child: TextformWidget(hintText: "+123 456 789"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 27, left: 50),
                  child: Text(
                    "Password",
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
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        "By continuing, you agree to",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "Terms of Use and Privacy Policy.",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 13),
                        child: ButtonWidget(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LandingView(),
                              ),
                            );
                          },
                          text: "Sign in",
                          backgroundColor: ConstantColors.mainGreen,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WelcomeView(),
                          ),
                        );
                      },
                      child: Text("Log In"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
