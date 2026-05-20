import 'package:finwise/features/landing/view/landing_view.dart';
import 'package:finwise/shared/services/shared_pref_svc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthServices {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> signInWithGoogle(BuildContext context) async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn.instance;

      await googleSignIn.initialize();

      final GoogleSignInAccount googleUser = await googleSignIn.authenticate();

      final GoogleSignInAuthentication googleAuth = googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
      );

      UserCredential userCredential = await auth.signInWithCredential(
        credential
      );

      User? user = userCredential.user;
      await SharedPrefSvc.instance.setValue(
        SharedPrefKeys.isLoggedIn, true);

        await SharedPrefSvc.instance.setValue(
          SharedPrefKeys.userName, 
          user?.displayName ?? "");

          await SharedPrefSvc.instance.setValue(
            SharedPrefKeys.token, 
           user?.email ?? "");

           await SharedPrefSvc.instance.setValue(
            SharedPrefKeys.id, 
            user?.uid ?? "");

      if (!context.mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LandingView()),
      );
    } catch (e) {
      debugPrint(e.toString());

      if (!context.mounted) return;

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }
}
