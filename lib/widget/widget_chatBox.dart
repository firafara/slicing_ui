import 'package:flutter/material.dart';

class MessageColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFE8F1FF),
          width: 2.0,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "Message",
                  style: TextStyle(
                    fontFamily: 'Mulish',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFA0A4AB),
                  ),
                ),
              ),
              SizedBox(width: 8.0), // Spacer
              Image.asset(
                'images/dokumen.png', // Ganti dengan path gambar Anda
                width: 32.0,
                height: 32.0,
              ),
              Container(
                width: 48.0,
                height: 48.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: Center(
                  child: Image.asset(
                    'images/voice_note.png', // Ganti dengan path gambar Anda
                    width: 32.0,
                    height: 32.0,
                    // fit: BoxFit.cover,
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}

