import 'package:flutter/material.dart';
import 'package:slicing_ui/category/category.dart';
import 'package:slicing_ui/course/detail_course.dart';
import 'package:slicing_ui/course/popular_course.dart';
import 'package:slicing_ui/mentor/mentor_detail.dart';
import 'package:slicing_ui/mentor/top_mentor.dart';
import 'package:slicing_ui/model/model_course.dart';
import 'package:slicing_ui/model/model_mentor.dart';
import 'package:slicing_ui/widget/horizontal_list_popular_course_home.dart';
import 'package:slicing_ui/widget/widget_course_home.dart';
import 'package:slicing_ui/widget/widget_mentor.dart';
import 'package:slicing_ui/widget/widget_mentor_home.dart';

import 'notification_page.dart';
import 'widget/widget_course_completed.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = [
    'All',
    '3D Design',
    'Arts & Humanities',
    'Graphic Design',
    'Programmer'
  ];
  final List<String> imageList = [
    "images/slide1.png",
    "images/slide2.png",
    "images/slide3.png",
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Wrap your app with MaterialApp
      debugShowCheckedModeBanner: false,
      home: Scaffold( // Scaffold provides Material Design layout structure
        body: SingleChildScrollView(
          child: Container(
            color: Colors.grey[100],
            padding: EdgeInsets.all(0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 45,),
                      Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Hi, Ronald A. Martin", style: TextStyle(fontSize: 22, fontFamily: 'Jost', fontWeight: FontWeight.bold)),
                                  Text("What Would you like to learn Today? \nSearch Below.", style: TextStyle(color: Colors.grey[500],fontFamily: 'Mulish'),)
                                ],
                              ),
                            ],
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.green, width: 2,),
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => NotificationPage()),
                                  );
                                },
                                child: Icon(
                                  Icons.notifications,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50,),
                      _SearchWithFilter(hintText: "Search For..."),
                      SizedBox(height: 40,),
                      Stack(
                        children: [
                          Image.asset("images/slide1.png"),
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: _buildPageIndicator(),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Categories",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  fontFamily: 'Jost',
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                          Positioned(
                            right: 0,
                            child:  GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Category()),
                                );
                              },
                              child: Text(
                                "SEE ALL >",
                                style: TextStyle(
                                  fontFamily: 'Jost',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: _HorizontalListView(categories: categories),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items to the start and end of the row
                        children: [
                          Text(
                            "Popular Courses",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              fontFamily: 'Jost',
                            ),
                            textAlign: TextAlign.start,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PopularCourse()),
                              );
                            },
                            child: Text(
                              "SEE ALL >",
                              style: TextStyle(
                                fontFamily: 'Jost',
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      HorizontalListPopularCourse(categories: categories),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 280,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: courses.length,
                          itemBuilder: (BuildContext context, int index) {
                            Course course = courses[index];
                            return GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailCourse(course: course)));
                              },
                              child: WidgetCourseHome(
                                urlImage: "images/homeCourse.png",
                                txtCategori: course.txtCategori,
                                txtTitle: course.txtTitle,
                                txtPrice: course.txtPrice,
                                txtRating: course.txtRating,
                                txtStudent: course.txtStudent,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Top Mentor",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              fontFamily: 'Jost',
                            ),
                            textAlign: TextAlign.start,
                          ),
                          GestureDetector(
                            // onTap: () {
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (context) => MentorDetail(
                            //       mentor: ModelMentor(
                            //         imageUrl: '', // Path to mentor image
                            //         name: '',
                            //         kelas: '',
                            //       ),
                            //     )),
                            //   );
                            // },
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => TopMentor()),
                              );
                            },

                            child: Text(
                              "SEE ALL >",
                              style: TextStyle(
                                fontFamily: 'Jost',
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      _buildTopMentors(),
                      // Add your _buildTopMentors() widget here
                    ],
                  ),
                ),
                SizedBox(height: 20,),

              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < imageList.length; i++) {
      indicators.add(i == _currentIndex ? _indicator(true) : _indicator(false));
    }
    return indicators;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      height: 8,
      width: isActive ? 24 : 8,
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: isActive ? Colors.green : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}

class _SearchWithFilter extends StatefulWidget {
  final String hintText;

  _SearchWithFilter({
    required this.hintText,
  });

  @override
  __SearchWithFilterState createState() => __SearchWithFilterState();
}

class __SearchWithFilterState extends State<_SearchWithFilter> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white10, width: 0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hintText,
          prefixIcon: Icon(Icons.search),
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: Container(
              width: 30,
              height: 30,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.blue,
              ),
              child: Icon(
                Icons.filter_alt,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _HorizontalListView extends StatefulWidget {
  final List<String> categories;

  const _HorizontalListView({Key? key, required this.categories}) : super(key: key);

  @override
  __HorizontalListViewState createState() => __HorizontalListViewState();
}

class __HorizontalListViewState extends State<_HorizontalListView> {
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40, // Set the height according to your need
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 8),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: _selectedIndex == index ? Colors.blue : Colors.grey[200],
              ),
              child: Text(
                widget.categories[index],
                style: TextStyle(
                  color: _selectedIndex == index ? Colors.white : Colors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
Widget _buildTopMentors() {
  return FutureBuilder<List<ModelMentor>>(
    future: fetchUsers(), // Your method to fetch mentors
    builder: (BuildContext context, AsyncSnapshot<List<ModelMentor>> snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return Center(child: CircularProgressIndicator());
      } else if (snapshot.hasError) {
        return Center(child: Text('Error: ${snapshot.error}'));
      } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
        return Center(child: Text('No mentors found'));
      } else {
        return Container(
          height: 120, // Adjust to fit your design
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MentorDetail(
                        mentor: ModelMentor(
                          imageUrl: '', // Path to mentor image
                          name: '',
                          kelas: '',
                        ),
                      )),
                    );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      ClipOval(
                        child: Image.network(
                          snapshot.data![index].imageUrl,
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        snapshot.data![index].name,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      }
    },
  );
}
