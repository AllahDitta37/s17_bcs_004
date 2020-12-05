
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';


void main() => runApp(SplashScreen());

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => MyLevel())));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('images/mypic.jpg', height: 150.0, width: 150,),
          SizedBox(height: 20,),
          Text(' SP17-BCS-004', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60.0, color: Colors.black),),
          SizedBox(height: 30,),
          Text("Allah Ditta",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0, color: Colors.black),),

          SizedBox( height: 30.0),

          SpinKitRipple(color: Colors.blue),
        ],
      ),
    );
  }
}
