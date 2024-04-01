import 'package:flutter/material.dart';


class VoiceCall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F9FF), // Ubah warna app bar
      ),
      backgroundColor: Color(0xFFF5F9FF), // Ubah warna latar belakang body
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            ImageTextWidget(
              imageAsset: 'assets/images/call.png',
              title: 'Scott R. Shoemake',
              subtitle: '04:50 Minutes',
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Image.asset('assets/images/VOICE.png'),
                ),
                Expanded(
                  child: Image.asset('assets/images/END.png'),
                ),
                Expanded(
                  child: Image.asset('assets/images/VIDEO.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );

  }
}

class ImageTextWidget extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String subtitle;

  const ImageTextWidget({
    required this.imageAsset,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 220,
          height: 220,
          child: Image.asset(imageAsset),
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontFamily: 'Mulish',
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
