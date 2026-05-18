import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/features/launch/views/launch_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    navigateToLaunch();
  }

  void navigateToLaunch(){
    Future.delayed(Duration(seconds: 3), (){   
      Navigator.pushReplacement(     
        context, MaterialPageRoute(
          builder:(context)=> const LaunchView() ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(image: AssetImage('assets/vectors/Vector (2).png')),
          ),
          Text(
            "FinWise",
            style: TextStyle(
              fontFamily: "Poppins",
              color: ConstantColors.white,
              fontSize: 52,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
