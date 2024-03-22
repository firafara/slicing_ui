
import 'package:flutter/material.dart';




class LetsYouIn extends StatelessWidget {
  const LetsYouIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(bottom: 30), // Adjust the padding as needed
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // This will space out the column's children evenly.
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 300), // Adjust the padding as needed
              child: Text(
                "Let's you in",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Image.asset('assets/images/google.png'),
                ),
                SizedBox(
                  width: 172,
                  height: 20,
                  child: Text(
                    "Continue with Google",
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF545454),
                      letterSpacing: 0.2,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Image.asset('images/apple.png'),
                ),
                SizedBox(
                  width: 172,
                  height: 20,
                  child: Text(
                    "Continue with Apple",
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF545454),
                      letterSpacing: 0.2,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              '( Or )',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                fontFamily: 'Mulish',
              ),
            ),
            SizedBox(height: 10),
            // Custom Sign In Button
            InkWell(
              onTap: () {
                // Action when button is pressed
              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xFF0961F5),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Sign In with Your Account',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Jost',
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(4), // Padding inside the circle
                          child: Icon(
                            Icons.arrow_forward,
                            color: Color(0xFF0961F5),
                            size: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                // Action when button is pressed
              },
              child: Text(
                'Dont have an Account? SIGN UP',
                style: TextStyle(
                  color: Color(0xFF0961F5),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}