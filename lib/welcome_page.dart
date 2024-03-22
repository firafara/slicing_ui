import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui/intro01_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  void initState(){
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async{
    var duration = const Duration(seconds: 5);
    return Timer(duration, (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Intro01()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF0961F5),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Intro01()),
            );
          },
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Transform.rotate(
                  angle: -25,
                  child: Image.asset(
                    'images/shape.png',
                    width: 430,
                    height: 429,
                  ),
                ),
                Positioned(
                  child: Image.asset(
                    'images/oval.png',
                    width: 330,
                    height: 330,
                  ),
                ),
                Positioned(
                  child: Image.asset(
                    'images/logo.png',
                    width: 116,
                    height: 158,
                  ),
                ),
                // ... Add more images if needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}
