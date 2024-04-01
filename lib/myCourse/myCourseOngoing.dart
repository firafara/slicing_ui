import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui/widget/widget_course_ongoing.dart';
import '../model/model_course.dart';
// import 'myCoursePage.dart'; // Import file MyCourse

class MyCourseOngoing extends StatefulWidget {
  const MyCourseOngoing({Key? key}) : super(key: key);
  @override
  State<MyCourseOngoing> createState() => _MyCourseOngoingState();
}

class _MyCourseOngoingState extends State<MyCourseOngoing> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: courses.length,
        itemBuilder: (BuildContext context, int index) {
          Course course = courses[index];
          return WidgetCourseOngoing(
            title: course.txtTitle,
            imagePath: course.urlImage,
            rating: course.txtRating,
            subtitle: course.txtCategori,
            duration: course.txtDuration,
            courseCompleted: course.txtCompletedTask,
            courseTotal: course.txtTotalTask,
            progresValue: (int.parse(course.txtCompletedTask)/int.parse(course.txtTotalTask)),
          );
        },
      ),
    );
  }

  Widget _buildContent(
      String subtitle,
      String title,
      String rating,
      String imagePath,
      double progressValue, // Ubah tipe parameter
      ) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 10),
      elevation: 3,
      child: SizedBox(
        height: 134, // Set tinggi kartu
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/course.png',
                width: 130, // Set lebar gambar
                height: double.infinity, // Set tinggi gambar ke tinggi maksimum
                fit: BoxFit.fill, // Mengisi gambar ke seluruh ruang yang tersedia
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontFamily: 'Mulish', // Mengubah font
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFFF6B00), // Ubah warna
                      ),
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'Jost', // Mengubah font
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF202244), // Ubah warna
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber),
                        SizedBox(width: 5),
                        Text(
                          '$rating',
                          style: TextStyle(
                            fontFamily: 'Mulish', // Mengubah font
                            fontSize: 11,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF202244), // Ubah warna
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    // Menambahkan baris kemajuan (progress bar)
                    Row(
                      children: [
                        Expanded(
                          child: LinearProgressIndicator(
                            value: progressValue, // Nilai progress
                            backgroundColor: Colors.grey[300], // Warna latar belakang
                            valueColor: AlwaysStoppedAnimation<Color>(
                              progressValue >= 0.5 ? Colors.green : Colors.red, // Warna sesuai dengan nilai progress
                            ),
                          ),
                        ),
                        SizedBox(width: 8), // Spacer
                        Text(
                          '${(progressValue * 100).toInt()}%', // Menampilkan persentase
                          style: TextStyle(
                            fontFamily: 'Mulish', // Mengubah font
                            fontSize: 12,
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
      ),
    );
  }
}

