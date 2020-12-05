import 'package:flutter/material.dart';
import 'package:s17_bcs_004/homescreen.dart';
import 'package:s17_bcs_004/splash.dart';



void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
