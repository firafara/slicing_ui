import 'package:flutter/material.dart';
import 'package:slicing_ui/category/category.dart';
import 'package:slicing_ui/category/search.dart';
import 'package:slicing_ui/course/popular_course.dart';
import 'package:slicing_ui/home_page.dart';
import 'package:slicing_ui/login/register_page.dart';
import 'package:slicing_ui/notification_profile.dart';
import 'package:slicing_ui/password/forgot_password.dart';
import 'package:slicing_ui/profile/fill_profile_page.dart';

class LoginPage extends StatelessWidget {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF5F9FF),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'images/logo_login.png',
                      width: 185,
                      height: 70,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Let’s Sign In.!",
                      style: TextStyle(
                        fontFamily: 'Jost',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Login to Your Account to Continue your Courses",
                      style: TextStyle(
                        fontFamily: 'Mulish',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              SizedBox(height: 20),
              TextField(
                style: TextStyle(
                  fontFamily: 'Mulish',
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Email",
                  prefixIcon: Icon(Icons.mail_outline, color: Color(0xFF545454)), // Changed to prefixIcon and added icon color
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 0), // Adjust padding as needed
                ),
                controller: txtEmail,
              ),
              SizedBox(height: 20),
              TextField(
                style: TextStyle(
                  fontFamily: 'Mulish',
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Password",
                  prefixIcon: Icon(Icons.lock_outline, color: Color(0xFF545454)), // Changed to prefixIcon and added icon color
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: Icon(Icons.visibility_off, color: Color(0xFF545454)), // Added icon color
                  contentPadding: EdgeInsets.symmetric(vertical: 0), // Adjust padding as needed
                ),
                controller: txtPassword,
                obscureText: true,
              ),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            side: BorderSide(color: Color(0xFF167F71), width: 2.0),
                          ),
                        ),
                        child: Checkbox(
                          value: false,
                          onChanged: (bool? value) {
                            // Fungsi ketika nilai checkbox berubah
                          },
                        ),
                      ),
                      Text(
                        'Remember Me',
                        style: TextStyle(
                          color: Color(0xFF545454),
                          fontFamily: 'Mulish',
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ForgotPassword()), // Ganti dengan halaman yang sesuai
                        );
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Color(0xFF545454),
                        fontFamily: 'Mulish',
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    // MaterialPageRoute(
                    //     builder: (context) => FillProfile()),
                    // );
                        //   MaterialPageRoute(
                        //       builder: (context) => Category()),
                        // );
                        // MaterialPageRoute(
                        //     builder: (context) => Search()),
                        //
                        MaterialPageRoute(
                            builder: (context) => NotificationProfile()),
                        );
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFF0961F5),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Sign In',
                          textAlign: TextAlign.center, // Center text
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Jost',
                          ),
                        ),
                      ),
                      Positioned(
                        right: 16,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Color(0xFF0961F5),
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),
              // "Or Continue With" di tengah
              Center(
                child: Text(
                  "Or Continue With",
                  style: TextStyle(
                    fontFamily: 'Mulish',
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF545454),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/google.png',
                      width: 48,
                      height: 48,
                    ),
                    SizedBox(width: 20),
                    Image.asset(
                      'assets/images/apple.png',
                      width: 48,
                      height: 48,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // "Don’t have an Account? SIGN UP" menjadi tengah
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()), // Ganti dengan halaman yang sesuai
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        color: Color(0xFF545454), // Default color for text
                        fontFamily: 'Mulish',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(text: "Don't have an account? "),
                        TextSpan(
                          text: "SIGN UP",
                          style: TextStyle(
                            color: Color(0xFF0961F5), // Color for "Sign Up"
                            decoration: TextDecoration.underline, // Underline for "Sign Up"
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
