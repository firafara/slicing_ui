import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slicing_ui/myCourse/ongoingLesson.dart';
class WidgetCourseOngoing extends StatelessWidget {
  final String subtitle;
  final String title;
  final String rating;
  final String imagePath;
  final double progresValue;
  final String courseTotal;
  final String courseCompleted;
  final String duration;

  const WidgetCourseOngoing({
    required this.subtitle,
    required this.title,
    required this.rating,
    required this.imagePath,
    required this.progresValue,
    required this.courseTotal,
    required this.courseCompleted,
    required this.duration
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
            MaterialPageRoute(builder: (context) => OngoingLesson()),
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
                    child: Image.network(
                      imagePath,
                      fit: BoxFit.cover,
                      height: 100,
                      width: 100,
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
                              '$rating  |  $duration',
                              style: TextStyle(
                                fontFamily: 'Jost',
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              child: LinearProgressIndicator(
                                value: progresValue,
                                backgroundColor: Colors.grey[300], // Warna latar belakang
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  progresValue >= 0.5 ? Colors.green : Colors.red, // Warna sesuai dengan nilai progress
                                ),
                              ),
                            ),
                            SizedBox(width: 8), // Spacer
                            Text(
                              '$courseCompleted/$courseTotal     ', // Menampilkan persentase
                              style: TextStyle(
                                fontFamily: 'Mulish', // Mengubah font
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}

