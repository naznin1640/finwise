import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/features/profile/view/security/change_pin_view.dart';
import 'package:finwise/features/profile/view/security/terms_and_conditions.dart';
import 'package:flutter/material.dart';

class SecurityView extends StatelessWidget {
  const SecurityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Security",
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
            padding: const EdgeInsets.only(left: 38, right: 38),
            child: Column(
              spacing: 50,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text("Security", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins"
                  ),),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePinView()));
                  },
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Change Pin", 
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins"
                        ),),
                        Icon(Icons.arrow_forward_ios, size: 13,)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Finger Print", 
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins"
                      ),),
                      Icon(Icons.arrow_forward_ios, size: 13,)
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TermsAndConditions()));
                  },
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Terms And Conditions", 
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins"
                        ),),
                        Icon(Icons.arrow_forward_ios, size: 13,)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}