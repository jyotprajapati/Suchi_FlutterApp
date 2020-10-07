import 'package:flutter/material.dart';

import 'SplashScreen.dart';
import 'Logincheck.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Logincheck(),
      theme: ThemeData(
        fontFamily: "Poppins",
        //scaffoldBackgroundColor: Color.fromRGBO(68, 68, 68, 100),
        // scaffoldBackgroundColor: Color.fromRGBO(0, 0, 0, 100),
        // accentColorBrightness: Brightness.dark,
        primaryColor: Color(0xFF34B1FF),
      ),
    );
  }
}
