
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:slicing_ui/profile/fingerpin.dart';

class CreatePin extends StatefulWidget {
  const CreatePin({super.key});

  @override
  State<CreatePin> createState() => _CreatePinState();
}

class _CreatePinState extends State<CreatePin> {
  List<String> pin = ["", "", "", ""];

  TextEditingController pin1 = TextEditingController();
  TextEditingController pin2 = TextEditingController();
  TextEditingController pin3 = TextEditingController();
  TextEditingController pin4 = TextEditingController();

  int _countdown = 60;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
      if (_countdown == 0) {
        _timer.cancel();
      } else {
        setState(() {
          _countdown--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  Widget buildPin(BuildContext context, TextEditingController controller) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: controller,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number, // Set keyboard type to numeric
        maxLength: 1,
        style: TextStyle(fontSize: 24),
        decoration: InputDecoration(
          counterText: '', // Hides the character count
          border: OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Row(
          children: [
            Text(
              'Create New Pin',
              style: TextStyle(fontSize: 18.0,fontFamily: 'Jost',fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Add a Pin Number to Make Your Account \nmore Secure",
                style: TextStyle(fontSize: 12,fontFamily: 'Mulish'),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildPin(context, pin1),
                  SizedBox(width: 8),
                  buildPin(context, pin2),
                  SizedBox(width: 8),
                  buildPin(context, pin3),
                  SizedBox(width: 8),
                  buildPin(context, pin4),
                ],
              ),
            ),
            SizedBox(height: 10,),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),

              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FingerPin()), // Ganti dengan halaman yang sesuai
                );
              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xFF0961F5),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  width: 400,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Continue',
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
            ),
          ],
        ),
      ),
    );
  }
}
