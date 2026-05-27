import 'package:finwise/core/constants/constantcolors.dart';
import 'package:flutter/material.dart';

class FaqView extends StatelessWidget {
  const FaqView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 37,
            width: 349,
            decoration: BoxDecoration(
              color: ConstantColors.lighGreen,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("General", style: TextStyle(fontFamily: "Poppins",fontSize: 15,fontWeight: FontWeight.w500),),
                Text("Account",style: TextStyle(fontFamily: "Poppins",fontSize: 15,fontWeight: FontWeight.w500)),
                Text("Serivices",style: TextStyle(fontFamily: "Poppins",fontSize: 15,fontWeight: FontWeight.w500))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 9),
            child: TextField(
              decoration: InputDecoration(
                    border:
                    OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                    filled: true,
                    fillColor: ConstantColors.lighGreen, 
                    hintText: "Search",
                    hintStyle: TextStyle(color:ConstantColors.darkGreen,
                    fontSize: 13, 
                    fontWeight: FontWeight.w300,
                    )
                  )
              ),
          ),
          ExpansionTile(title: Text("How to use FinWise?",
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 14
          ),)),
          ExpansionTile(title: Text("How much does it cost to use FinWise?",
           style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 14
          ),)),
          ExpansionTile(title: Text("How to contact support?",
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 14
          ))),
          ExpansionTile(title: Text("How can I reset my password if I forget it?",
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 14
          ))),
          ExpansionTile(title: Text("Are there any privacy or data security measures in place?",
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 14
          ))),
          ExpansionTile(title: Text("Can I customize settings within the application?",
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 14
          ))),
          ExpansionTile(title: Text("How can I delete my account?",
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 14
          ))),
          ExpansionTile(title: Text("How do I access my expense history?",
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 14
          ))),
          ExpansionTile(title: Text("Can I use the app offline?",
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 14
          ))),
        ]
      ),
    );
  }
}