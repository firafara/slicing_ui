import 'package:flutter/material.dart';
import 'package:slicing_ui/intro02_page.dart';

class Intro01 extends StatelessWidget {
  const Intro01({super.key});

  @override
  Widget build(BuildContext context) {
    var borderRadius = BorderRadius.circular(4); // Menginisialisasi objek BorderRadius.circular dengan radius 4
    return Scaffold(
      backgroundColor: Color(0xFFF5F9FF),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Online Learning",
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Center( // Menambahkan Center di sekitar teks agar menjadi rata tengah
                  child: Text(
                    "We Provide Classes Online Classes and Pre Recorded \nLectures.!",
                    textAlign: TextAlign.center, // Mengatur teks menjadi rata tengah
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 20,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Skip",
                  textAlign: TextAlign.end, // Mengatur teks menjadi rata kanan
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 16,
            child: GestureDetector(
              onTap: () {
                // Handle back button action
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Intro02()),
                );
              },
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFF0961F5),
                ),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 27.3,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 16,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 8),
                  width: 20,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: borderRadius, // Menggunakan objek BorderRadius.circular yang telah diinisialisasi
                    color: Colors.blue,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 8),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 8),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
