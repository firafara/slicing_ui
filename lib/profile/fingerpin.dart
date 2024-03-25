import 'dart:async';

import 'package:flutter/material.dart';

class FingerPin extends StatefulWidget {
  const FingerPin({super.key});

  @override
  State<FingerPin> createState() => _FingerPinState();
}

class _FingerPinState extends State<FingerPin> {
  void _showCongratulationsDialog() {
    showDialog(
      context: context,
      barrierDismissible: true, // Dialog dapat ditutup dengan mengetuk di luar area dialog
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          title: Text(""),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'images/congratulation.png', // Ubah path gambar sesuai dengan direktori Anda
                height: 200,
                width: 200,
              ),
              Text("Congratulations",
                style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Jost',fontSize: 24),
              ),
              SizedBox(height: 20),
              Text("Your Account is Ready to Use. You will be redirected to the Home Page in a Few Seconds.",
                style: TextStyle(fontFamily: 'Mulish'),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Image.asset(
                'images/loading.png', // Ubah path gambar sesuai dengan direktori Anda
                height: 30,
                width: 30,
              ),
            ],
          ),
          actions: [], // Hapus semua tombol
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Row(
          children: [
            SizedBox(width: 8.0),
            Text(
              'Set Your Fingerprint',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold,fontFamily: 'Jost'),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Konten di bagian atas
            Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(height: 50,),
                    Text("Add a Fingerprint to Make your Account \nmore Secure",textAlign: TextAlign.center, style: TextStyle(fontSize: 16,fontFamily: 'Mulish')),
                    SizedBox(height: 50,),
                    Image.asset('images/fingerprint.png'),
                    SizedBox(height: 50,),
                    Text("Please Put Your Finger on the Fingerprint \nScanner to get Started.",textAlign: TextAlign.center, style: TextStyle(fontSize: 16,fontFamily: 'Mulish'))

                  ],
                )
            ),
            // Tombol di bagian bawah
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {

                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Container(
                        width: 200,
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Skip',
                                textAlign: TextAlign.center, // Center text
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Jost',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20), // Spacer between buttons
                  InkWell(
                    onTap: () {
                      _showCongratulationsDialog();
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF0961F5),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Container(
                        width: 200,
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
            )

          ],
        ),
      ),
    );
  }
}
