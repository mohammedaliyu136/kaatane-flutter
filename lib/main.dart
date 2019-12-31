import 'package:flutter/material.dart';
import 'dart:async';

import 'home.dart';
import 'meal_list.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _counter = 3;
  @override
  void initState() {
    super.initState();
    initData().then((_) {
      navigateToHomeScreen();
    });
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      setState(() {
        _counter--;
        if (_counter == 0) {
          timer.cancel();
        }
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(child: Text("Kaatane", textAlign: TextAlign.center, style: new TextStyle(
            fontSize: 50.0,
            color: Colors.white,
          ),)),
        ],
      ),
    );
  }
  Future initData() async {
    await Future.delayed(Duration(seconds: 3));
  }
  void navigateToHomeScreen() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => HomeScreen()));
  }
}



