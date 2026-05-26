import 'package:finwise/core/constants/constantcolors.dart';
import 'package:finwise/features/launch/views/splash_view.dart';
import 'package:finwise/features/profile/provider/theme_notifier.dart';
import 'package:finwise/firebase_options.dart';
import 'package:finwise/shared/services/shared_pref_svc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

   await SharedPrefSvc.instance.init();
  
  runApp(
    ProviderScope(child: 
    const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final themeMode = ref.watch(themeProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      themeMode: themeMode,

      darkTheme: ThemeData.dark(),

      theme: ThemeData(
        scaffoldBackgroundColor: ConstantColors.mainGreen,
        appBarTheme: AppBarThemeData(
          backgroundColor: ConstantColors.mainGreen
        )
      ),
     home: SplashView(),
    );
  }
}