import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/features/launch/views/splash_view.dart';
import 'package:finwise/features/onboarding/view/onboarding2_view.dart';
import 'package:finwise/features/onboarding/view/onboarding_view1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(child: 
    const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: ConstantColors.mainGreen
      ),
     home: SplashView(),
    );
  }
}
