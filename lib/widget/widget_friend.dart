import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetFriend extends StatelessWidget {
  final String namaUser;
  final String imageUrl;
  final String section;
  final bool invited;

  WidgetFriend({required this.namaUser, required this.imageUrl, required this.section, required this.invited});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16), // Jarak antar widget
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imageUrl),
                  ),
                ),
              ),
              SizedBox(width: 8.0), // Jarak antara gambar dan teks nama
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      namaUser,
                      style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold

                      ),
                    ),
                    Text(
                      section,
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.black,
                      ),
                    ),
                  ]
              ),
            ],
          ),
        ),
        Positioned(
            right: 20,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              margin: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: invited ? Colors.blue : Colors.grey[500],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "Invited",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
        ),

      ],
    );
  }
}
