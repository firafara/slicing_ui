import 'package:flutter/material.dart';
import 'package:slicing_ui/course/course_list_filter.dart';
import 'package:slicing_ui/mentor/mentor_list.dart';
import 'package:slicing_ui/model/model_course.dart';
import 'package:slicing_ui/widget/widget_course_completed.dart';

class CourseList extends StatefulWidget {
  const CourseList({Key? key}) : super(key: key);

  @override
  State<CourseList> createState() => _CourseListState();
}

class _CourseListState extends State<CourseList> {
  int _selectedIndex = 0;
  TextEditingController _searchController = TextEditingController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F9FF),
        title: Text(
          'Online Course',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Color(0xFFF5F9FF),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white10, width: 0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: _searchController,
                onChanged: (value) {
                  // Handle search functionality here
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search For...',
                  prefixIcon: Icon(Icons.search, color: Colors.grey,),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CourseListFilter()),
                      );
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
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CourseList()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Warna latar belakang
                    ),
                    child: Text('Course', style: TextStyle(fontFamily: 'Mulish', color: Colors.white),),
                  ),
                ),
                SizedBox(width: 10), // Add some space between the buttons
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MentorList()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: Text('Mentor', style: TextStyle(fontFamily: 'Mulish', color: Colors.black),),
                  ),
                ),
              ],
            ),

            SizedBox(height: 10),
            Expanded(
              flex: 15,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: courses.length,
                itemBuilder: (BuildContext context, int index) {
                  Course course = courses[index];
                  return WidgetCourseCompleted(
                    title: course.txtTitle,
                    rating: course.txtRating,
                    imagePath: course.urlImage,
                    subtitle: course.txtCategori,
                    duration: course.txtDuration,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_copy_sharp),
            label: 'My Course',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_card),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue, // Selected item color
        unselectedItemColor: Colors.black, // Unselected item color
        showSelectedLabels: true, // Show labels for selected items
        showUnselectedLabels: true, // Show labels for unselected items
        onTap: _onItemTapped,
      ),
    );
  }
}
