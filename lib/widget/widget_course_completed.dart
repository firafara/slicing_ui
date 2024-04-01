import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slicing_ui/myCourse/completedLesson.dart';
import 'package:slicing_ui/myCourse/sertifikat.dart';

class WidgetCourseCompleted extends StatelessWidget {
  final String subtitle;
  final String title;
  final String rating;
  final String imagePath;
  final String duration;

  const WidgetCourseCompleted({
    required this.subtitle,
    required this.title,
    required this.rating,
    required this.imagePath,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: GestureDetector(
        onTap: () {
          // Navigasi ke CompletedLesson ketika card diklik
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CompletedLesson()),
          );
        },
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
                    child: Image.asset(
                      'images/course.png', // Lokasi gambar di direktori assets
                      fit: BoxFit.cover,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          subtitle,
                          style: TextStyle(
                            fontFamily: 'Jost',
                            fontSize: 12,
                            color: Colors.orange,
                          ),
                        ),
                        Text(
                          title,
                          style: TextStyle(
                            fontFamily: 'Jost',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Text(
                              '$rating  |  $duration',
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
              right: 20,
              child: Image.asset(
                'images/iconagree.png',
                width: 28,
                height: 28,
              ),
            ),
            Positioned(
              right: 20,
              bottom: 10,
              child: GestureDetector(
                onTap: () {
                  // Navigasi ke Certifikat ketika tombol "View Certificate" diklik
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Certifikat()),
                  );
                },
                child: Text(
                  "View Certificate",
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF202244),
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
