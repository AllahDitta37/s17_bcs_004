import 'main.dart';
import 'mainDrawer.dart';
import 'package:flutter/material.dart';
import 'FirstPage.dart';
import 'TwoLevel.dart';

void main() => runApp(MyContact());

class MyContact extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sessionalal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(backgroundColor: Colors.blue, title: Text('Contact Us', style: TextStyle(color: Colors.white),),),
    drawer: Drawer(
    child: MainDrawer(),
    ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
      Text('Allah Ditta', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.white),),
      SizedBox(height: 30.0),
      Text("Registration No : SP17-BCS-004",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white),),
      SizedBox( height: 30.0),

          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: RaisedButton(onPressed: HomeScreen, color: Colors.green,
              child: Text('Go Home'),
            ),
          ),
    ],
    ),
    );
  }

  void HomeScreen() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyLevel()));
    });
  }
}


