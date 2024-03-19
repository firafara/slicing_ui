import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.lightBlue,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2)
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(height: 280,),
                    Image(image: AssetImage('images/logo.png',
                    ),
                      width: 116,
                      height: 158,
                    )
                  ],
                ),

                const SizedBox(height: 80,)
              ],
            ),

          )
        ],
      ),
    );
  }
}
