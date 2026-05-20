import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/features/landing/view/landing_view.dart';
import 'package:finwise/features/launch/views/launch_view.dart';
import 'package:finwise/shared/services/shared_pref_svc.dart';
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
    navigateToNextScreen();
  }

  void navigateToNextScreen(){
    Future.delayed(Duration(seconds: 3),
    (){
      bool isLoggedIn =
    SharedPrefSvc.instance.getValue(
      SharedPrefKeys.isLoggedIn,
      false,
    );
    if(!mounted) return;

    if(isLoggedIn){
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context)=> LandingView()));
    }else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LaunchView()));
    }
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
