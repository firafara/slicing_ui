import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetCourseCompleted extends StatelessWidget {
  final String subtitle;
  final String title;
  final String imagePath;

  const WidgetCourseCompleted({
    required this.subtitle,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 12),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white,
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child:   Image.asset(
                    'images/course.png',
                    width: 150,
                    height: 100,
                  ),
                ),
                SizedBox(width: 10),
                Expanded( // Agar judul otomatis ke bawah jika layar penuh
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontFamily: 'Jost',
                          fontSize: 12,
                          color: Colors.orange
                        ),
                      ),
                      Text(
                        title,
                        style: TextStyle(
                          fontFamily: 'Jost',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2, // Atur maksimum 2 baris
                        overflow: TextOverflow.ellipsis, // Tambahkan elipsis jika melebihi 2 baris
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow, size: 12),
                          Text(
                            '4.2'  '    |   '  '7830 Std',
                            style: TextStyle(
                              fontFamily: 'Jost',
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 30,
            right: 20,
            child: Image.asset(
              'images/bookmark.png',
              width: 20,
              height: 10,
            ),
          ),
        ],
      ),
    );
  }
}

