import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetMentor extends StatelessWidget {
  final String namaUser;
  final String imageUrl;
  final String section;

  WidgetMentor({required this.namaUser, required this.imageUrl, required this.section});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    image: imageUrl.isNotEmpty ? NetworkImage(imageUrl) as ImageProvider<Object> : AssetImage('image/blankuser.png'),
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
        Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Divider())
      ],
    );
  }
}
