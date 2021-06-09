import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.length}) : super(key: key);

  final int length;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Kushan Eranga',
              style: TextStyle(
                fontSize: 22.0,
                decoration: TextDecoration.none,
                color: Colors.white,
                fontStyle: FontStyle.normal,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Profile',
              style: TextStyle(
                fontSize: 16.0,
                decoration: TextDecoration.none,
                color: Colors.white,
                fontStyle: FontStyle.normal,
                letterSpacing: 1.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}