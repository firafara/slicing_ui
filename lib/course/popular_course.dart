import 'package:flutter/material.dart';
import '../model/model_course.dart';
import '../widget/horizontal_list_popular_course_home.dart';
import '../widget/widget_course_completed.dart';

class PopularCourse extends StatefulWidget {
  const PopularCourse({Key? key}) : super(key: key);

  @override
  State<PopularCourse> createState() => _PopularCourseState();
}

class _PopularCourseState extends State<PopularCourse> {
  List<String> categories = [
    '3D Design',
    'Arts & Humanities',
    'Graphic Design',
    'Programmer'
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Popular Course',
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
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            flex: 1,
            child: HorizontalListPopularCourse(categories: categories),
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
                  imagePath: course.urlImage,
                  subtitle: course.txtCategori,
                );
              },
            ),
          ),
        ],
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
            label: 'Indox',
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
