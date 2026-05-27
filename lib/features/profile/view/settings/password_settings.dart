import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/core/widgets/button_widget.dart';
import 'package:finwise/core/widgets/textform_widget.dart';
import 'package:finwise/features/profile/view/settings/success_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordSettings extends StatelessWidget {
  const PasswordSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Password Settings",
          style: TextStyle(
            color: ConstantColors.textClr,
            fontSize: 20,
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
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
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Container(
          decoration: BoxDecoration(
            color: ConstantColors.backgroundColor,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(60),
            topRight: Radius.circular(60))
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 37, top: 65),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Current Password",
                style: TextStyle(fontFamily: "Poppins",
                fontSize: 15, fontWeight: FontWeight.w500),),
                Padding(
                  padding: const EdgeInsets.only(right: 37),
                  child: TextformWidget(hintText: "●●●●●●●●", 
                  suffix: Icon(CupertinoIcons.eye_solid),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 42),
                  child: Text("New Password",
                  style: TextStyle(fontFamily: "Poppins",
                fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 37),
                  child: TextformWidget(hintText: "●●●●●●●●", 
                  suffix: Icon(CupertinoIcons.eye_solid),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 42),
                  child: Text("Confirm New Password",
                  style: TextStyle(fontFamily: "Poppins",
                fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(right: 37),
                  child: TextformWidget(hintText: "●●●●●●●●", 
                  suffix: Icon(CupertinoIcons.eye_solid),),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 65, right: 106,left: 50),
                  child: ButtonWidget(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SuccessView()));
                  }, 
                  text: "Change Password", 
                  backgroundColor: ConstantColors.mainGreen),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}