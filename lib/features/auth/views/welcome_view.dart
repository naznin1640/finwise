import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/core/widgets/button_widget.dart';
import 'package:finwise/core/widgets/textform_widget.dart';
import 'package:finwise/features/auth/views/create_account_view.dart';
import 'package:finwise/features/auth/views/forgot_password.dart';
import 'package:finwise/features/landing/view/landing_view.dart';
import 'package:finwise/shared/services/auth_services.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  WelcomeView({super.key});

  final TextEditingController emailContoller = TextEditingController();
  final TextEditingController pswdController = TextEditingController();

  final loginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 160,
        centerTitle: true,
        backgroundColor: ConstantColors.mainGreen,
        title: Text(
          'Welcome',
          style: TextStyle(
            fontSize: 30,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Form(
        key: loginKey,
        child: Container(
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
                  padding: const EdgeInsets.only(top: 60, left: 52),
                  child: Text(
                    "Username or email",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 36, right: 38, top: 3),
                  child: TextformWidget(
                    controller: emailContoller,
                    validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter an username or email";
                        }
                      },
                    hintText: "example@example.com"),
                ),
        
                Padding(
                  padding: const EdgeInsets.only(top: 23, left: 52),
                  child: Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 36, right: 38, top: 3),
                  child: TextformWidget(
                    controller: pswdController,
                    validator: (value) {
                        if (value!.isEmpty) {
                          return "Password is mandatory";
                        } else if (value.length < 8) {
                          return "password must contain 8 characters";
                        }
                      },
                    hintText: "●●●●●●●●",
                    suffix: Icon(Icons.remove_red_eye),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 111, right: 112),
                  child: ButtonWidget(
                    onPressed: () {
                      if(loginKey.currentState!.validate()){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LandingView()),
                      );
                      }
                    },
                    text: "Log in",
                    backgroundColor: ConstantColors.mainGreen,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPassword()),
                    );
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: ConstantColors.textClr,
                      fontFamily: "League Spartan",
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 111, right: 112),
                  child: ButtonWidget(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "Use",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    TextButton(onPressed: () {}, child: Text("Fingerprint")),
                    Text(
                      "To Access",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Center(child: Text("or sign up with")),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/vectors/Facebook.png"),
                      SizedBox(width: 17),
                      GestureDetector(
                        onTap: () async {
                          await AuthServices().signInWithGoogle(context);
                        },
                        child: Image.asset("assets/vectors/Google.png"),
                      ),
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
      ),
    );
  }
}
