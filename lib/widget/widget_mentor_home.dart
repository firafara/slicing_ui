import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetMentorHome extends StatelessWidget {
  final String namaUser;
  final String imageUrl;
  final String section;

  WidgetMentorHome({required this.namaUser, required this.imageUrl, required this.section});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90, // Set a fixed width for the entire widget
      margin: EdgeInsets.symmetric(horizontal: 8), // Adjust margins as needed
      child: Column(
        children: [
          Container(
            width: 64, // Set your desired width for the image
            height: 64, // And height for the image
            decoration: BoxDecoration(
              color: Colors.black, // Placeholder for the image
              shape: BoxShape.rectangle, // Changed to rectangle for the image placeholder
              borderRadius: BorderRadius.circular(10), // Adjust border radius to match your design
              // Remove DecorationImage if you're using a placeholder color
              // image: DecorationImage(
              //   fit: BoxFit.cover,
              //   image: imageUrl.isNotEmpty ? NetworkImage(imageUrl) : AssetImage('images/blankuser.png'),
              // ),
            ),
          ),
          SizedBox(height: 8), // Space between image and text
          Text(
            namaUser,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            section,
            style: TextStyle(
              fontSize: 10,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
