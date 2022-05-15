import 'dart:async';
import 'package:flutter/material.dart';
import 'package:cashiersimulator/home.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => homepage(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: new Color(0xFF4C748B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Cashier Simulator",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: '"Norwester"',
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                )),
            Text("On the go training",
                style: TextStyle(
                  fontFamily: 'Kollektif',
                  color: Colors.white,
                  fontSize: 18,
                ))
          ],
        ),
      ),
    );
  }
}
