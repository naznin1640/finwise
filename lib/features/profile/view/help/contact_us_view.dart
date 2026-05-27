import 'package:finwise/core/constants/constantcolors.dart';
import 'package:flutter/material.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});

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
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(top: 55),
              child: Row(
                children: [
                  Container(
                    height: 31,
                    width: 31,
                    decoration: BoxDecoration(
                      color: ConstantColors.mainGreen,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Image.asset("assets/vectors/support.png")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text("Customer services",),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 121),
                    child: Icon(Icons.arrow_forward_ios, size: 13,),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(top: 17),
              child: Row(
                children: [
                  Container(
                    height: 31,
                    width: 31,
                    decoration: BoxDecoration(
                      color: ConstantColors.mainGreen,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Image.asset("assets/vectors/website.png")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text("Website",),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 190),
                    child: Icon(Icons.arrow_forward_ios, size: 13,),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(top: 17),
              child: Row(
                children: [
                  Container(
                    height: 31,
                    width: 31,
                    decoration: BoxDecoration(
                      color: ConstantColors.mainGreen,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Image.asset("assets/vectors/facebook (2).png")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text("Facebook",),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 179),
                    child: Icon(Icons.arrow_forward_ios, size: 13,),
                  )
                ],
              ),
            ),
          ),
           SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(top: 17),
              child: Row(
                children: [
                  Container(
                    height: 31,
                    width: 31,
                    decoration: BoxDecoration(
                      color: ConstantColors.mainGreen,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Image.asset("assets/vectors/whatsapp.png")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text("Whatssapp",),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 169),
                    child: Icon(Icons.arrow_forward_ios, size: 13,),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(top: 17),
              child: Row(
                children: [
                  Container(
                    height: 31,
                    width: 31,
                    decoration: BoxDecoration(
                      color: ConstantColors.mainGreen,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Image.asset("assets/vectors/instagram.png", height: 17,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text("Instagram",),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 176),
                    child: Icon(Icons.arrow_forward_ios, size: 13,),
                  )
                ],
              ),
            ),
          ),
        ]
      ),
    );
  }
}