import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/features/profile/view/settings/settings_view.dart';
import 'package:flutter/material.dart';


class SuccessView extends StatefulWidget {
  const SuccessView({super.key});

  @override
  State<SuccessView> createState() => _SuccessViewState();
}

class _SuccessViewState extends State<SuccessView> {
  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  void navigateToNextScreen(){
    Future.delayed(Duration(seconds: 2),
    (){
      if(!mounted) return;
    Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => SettingsView()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Image.asset("assets/images/Ellipse 182.png"),
              Positioned(
                left: 6,
                top: 10,
                child: 
              Icon(Icons.check, color: ConstantColors.lighGreen,size: 50,))
            ],
          ),
         Center(
           child: Text("Password Has been\nChanged successfully",
           style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 20,
            color: ConstantColors.lighGreen,
            fontWeight: FontWeight.w600
           ),),
         )
        ],
      ),
    );
  }
}
