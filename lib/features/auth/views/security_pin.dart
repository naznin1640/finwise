import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/core/widgets/button_widget.dart';
import 'package:finwise/features/auth/views/create_account_view.dart';
import 'package:finwise/features/auth/views/newpassword_view.dart';
import 'package:finwise/shared/services/auth_services.dart';
import 'package:flutter/material.dart';

class SecurityPin extends StatelessWidget {
  const SecurityPin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 160,
        centerTitle: true,
        title: Text(
          "Security Pin",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          color: ConstantColors.backgroundColor,
          borderRadius: BorderRadius.circular(60),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Center(
                child: Text(
                  "Enter Security Pin",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 15,
              children: [
                Image.asset("assets/images/Ellipse 181.png"),
                Image.asset("assets/images/Ellipse 181.png"),
                Image.asset("assets/images/Ellipse 181.png"),
                Image.asset("assets/images/Ellipse 181.png"),
                Image.asset("assets/images/Ellipse 181.png"),
                Image.asset("assets/images/Ellipse 181.png"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 125, right: 125, top: 80),
              child:  ButtonWidget(
                fontSize: 20,
          onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder: (context) => NewpasswordView()));
          } , 
          text: "Accept", 
          backgroundColor: ConstantColors.mainGreen),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 125, right: 125, top: 19),
              child:  ButtonWidget(
                fontSize: 20,
          onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccountView()));
          } , 
          text: "Sign Up", 
          backgroundColor: ConstantColors.lighGreen),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
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
                Text("Don’t have an account?"),
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
    );
  }
}
