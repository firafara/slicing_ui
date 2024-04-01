import 'package:flutter/material.dart';
import 'package:slicing_ui/category/search.dart';
import 'package:slicing_ui/course/course_list.dart';
import 'package:slicing_ui/course/detail_course.dart';
import 'package:slicing_ui/course/detail_course_curriculum.dart';
import 'package:slicing_ui/course/popular_course.dart';
import 'package:slicing_ui/home_page.dart';
import 'package:slicing_ui/intro02_page.dart';
import 'package:slicing_ui/mentor/top_mentor.dart';
import 'package:slicing_ui/model/model_course.dart';

class Intro01 extends StatelessWidget {
  const Intro01({super.key});

  @override
  Widget build(BuildContext context) {
    var borderRadius = BorderRadius.circular(4);
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
                Center(
                  child: Text(
                    "We Provide Classes Online Classes and Pre Recorded \nLectures.!",
                    textAlign: TextAlign.center,
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
                  textAlign: TextAlign.end,
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Intro02()),
                  // MaterialPageRoute(builder: (context) => Search()),
                  // MaterialPageRoute(builder: (context) => NotificationProfile()),
                  // MaterialPageRoute(builder: (context) => CourseList()),
                  // MaterialPageRoute(builder: (context) => DetailCourse()),
                );
              },
              // onTap: () {
              //   // Get the first course from the list as an example.
              //   Course selectedCourse = courses[0]; // Replace '0' with the index of the course you want to display.
              //
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => DetailCourse(course: selectedCourse),
              //     ),
              //   );
              // },
              // onTap: () {
              //   // Get the first course from the list as an example.
              //   Course selectedCourse = courses[0]; // Replace '0' with the index of the course you want to display.
              //
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => DetailCourseCurriculum(course: selectedCourse),
              //     ),
              //   );
              // },
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
                    borderRadius: borderRadius,
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
