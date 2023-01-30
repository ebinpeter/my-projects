import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login/scond.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Screen(),
  ));
}

class Screen extends StatefulWidget {
  @override
  State<Screen> createState() => _SreenState();
}

class _SreenState extends State<Screen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => login()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/cool-background.png"))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(image: AssetImage("assets/icons/icon Fb.png"))
            ],
          ),
        ),
      ),
    );
  }
}
