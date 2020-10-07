import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:suchi/Register.dart';
import 'package:suchi/SplashScreen.dart';
// import 'HomeScreen.dart';
// import 'LoginScreen.dart';

// class SplashScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder(
//       stream: FirebaseAuth.instance.onAuthStateChanged,
//       builder: (ctx, AsyncSnapshot<FirebaseUser> snapshot) {
//         if (snapshot.hasData) {
//           if (snapshot.data != null) {
//             // if user is signed in
//             return SplashScreen();
//           } else {
//             // if user is not signed in
//             return RegisterPage();
//           }
//         }

//         // if user is not signed in
//         return SplashScreen();
//       },
//     );
//   }
// }

class Logincheck extends StatefulWidget {
  @override
  _LogincheckState createState() => _LogincheckState();
}

class _LogincheckState extends State<Logincheck> {
  @override
  void initState() {
    super.initState();
    navigateUser();
  }

  navigateUser() {
    // checking whether user already loggedIn or not
    FirebaseAuth.instance.currentUser().then((currentUser) {
      if (currentUser == null) {
        Timer(
            Duration(seconds: 2),
            () => Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => SplashScreen()),
                (Route<dynamic> route) => false));
      } else {
        Timer(
          Duration(seconds: 2),
          () => Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => RegisterPage()),
              (Route<dynamic> route) => false),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text("Design Your splash screen"),
        ),
      ),
    );
  }
}
