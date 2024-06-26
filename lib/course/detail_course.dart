import 'package:flutter/material.dart';
import 'package:slicing_ui/model/model_course.dart';
import 'package:slicing_ui/model/model_mentor.dart';
import 'package:slicing_ui/notification_page.dart';
import 'package:slicing_ui/payment/paymentPage.dart';
import 'package:slicing_ui/widget/ReviewWidget.dart';
import 'package:slicing_ui/widget/widget_mentor.dart';
import 'package:slicing_ui/widget/widget_section.dart';

class DetailCourse extends StatefulWidget {
  final Course course;

  const DetailCourse({Key? key, required this.course}) : super(key: key);

  @override
  _DetailCourseState createState() => _DetailCourseState();
}

class _DetailCourseState extends State<DetailCourse> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Course course = widget.course;
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Course'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFFDEEEE6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                      margin: EdgeInsets.only(top: 200), // Make room for the black overlay
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 60), // Space for the black overlay behind
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                course.txtCategori,
                                style: TextStyle(
                                  fontFamily: 'Jost',
                                  color: Colors.orange,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.yellow[600]),
                                  SizedBox(width: 4),
                                  Text(
                                    course.txtRating,
                                    style: TextStyle(
                                      color: Colors.yellow[600],
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            course.txtTitle,
                            style: TextStyle(
                              fontFamily: 'Jost',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            '\$${course.txtPrice}',
                            style: TextStyle(
                              fontFamily: 'Jost',
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Icon(Icons.class_outlined, color: Colors.black),
                              SizedBox(width: 4),
                              Text(
                                '21 Class | ',
                                style: TextStyle(
                                  fontFamily: 'Jost',
                                  color: Colors.black,
                                  fontSize: 14,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              Icon(Icons.timelapse, color: Colors.black), // Icon for hour
                              Text(
                                ' 42 hours',
                                style: TextStyle(
                                  fontFamily: 'Jost',
                                  color: Colors.black,
                                  fontSize: 14,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                          TabBar(
                            controller: _tabController,
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.grey,
                            indicatorColor: Colors.blue,
                            tabs: [
                              Tab(text: 'About'),
                              Tab(text: 'Curriculum'),
                            ],
                          ),
                          Container(
                            // Adjust the height as necessary
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: TabBarView(
                              controller: _tabController,
                              children: [
                                SingleChildScrollView(
                                  padding: EdgeInsets.all(16.0),
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'Graphic Design now a popular profession graphic design by off your carrer about tantas regiones barbarorum pedibus obiit \n\nGraphic Design n a popular profession l Cur tantas regiones barbarorum pedibus obiit, maria transmi Et ne nimium beatus est; Addidisti ad extremum etiam ',
                                      style: TextStyle(color: Colors.black,
                                          fontFamily: 'Mulish',
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Read More',
                                          style: TextStyle(
                                            color: Colors.blue,
                                            decoration: TextDecoration.underline,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Mulish',
                                          ),
                                          // Add an onTap function here to handle the click event
                                          // onTap: () {
                                          //   // Implement what you want to happen when "Read More" is clicked
                                          // },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CourseSectionWidget(),
                              ],
                            ),
                          ),
                          SizedBox(height: 24), // Space below the TabBarView
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      height: 200, // Height of the black overlay
                      decoration: BoxDecoration(
                        color: Colors.black, // Black overlay color

                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24), // Space below the TabBarView
              _buildInstructorSection(), // Calling the _buildInstructorSection method
              SizedBox(height: 24), // Space below the TabBarView
              _buildYouGet(), // Calling the _buildInstructorSection method
              SizedBox(height: 24), // Space below the TabBarView
              ReviewWidget(),
              SizedBox(height: 24), // Space below the TabBarView
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaymentPage(course: course,)),
                    );                  },
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFF0961F5),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Enroll Course',
                            textAlign: TextAlign.center, // Center text
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'Jost',
                            ),
                          ),
                        ),
                        Positioned(
                          right: 16,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Color(0xFF0961F5),
                                size: 24,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30), // Space below the TabBarView

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInstructorSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 27,
            backgroundImage: AssetImage('images/wiliam.png'),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'William S. Cunningham',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Graphic Design',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.chat,
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  Widget _buildYouGet() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What You\'ll Get',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Jost',
            ),
          ),
          SizedBox(height: 8), // Space between title and texts
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTextWithIcon('25 Lessons', Icons.book),
                    _buildTextWithIcon('Access Mobile, Desktop & TV', Icons.devices),
                    _buildTextWithIcon('Beginner Level', Icons.star),
                    _buildTextWithIcon('Audio Book', Icons.audiotrack),
                    _buildTextWithIcon('Lifetime Access', Icons.access_time),
                    _buildTextWithIcon('100 Quizzes', Icons.quiz),
                    _buildTextWithIcon('Certificate of Completion', Icons.assignment_turned_in),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTextWithIcon(String text, IconData icon) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(width: 8), // Space between icon and text
        Text(
          text,
          style: TextStyle(
              fontSize: 14,
              fontFamily: 'Mulish'
          ),
        ),
      ],
    );
  }


}
