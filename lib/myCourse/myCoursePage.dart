import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slicing_ui/inbox/inboxPage.dart';
import 'package:slicing_ui/model/model_course.dart';
import 'package:slicing_ui/myCourse/myCourseOngoing.dart';
import 'package:slicing_ui/myCourse/myCourseCompleted.dart';
import 'package:slicing_ui/profile/profile.dart';
import 'package:slicing_ui/transactionPage.dart';
import 'package:slicing_ui/widget/widget_search.dart';
import 'package:slicing_ui/widget/widget_course_completed.dart';

class MyCoursePage extends StatefulWidget {
  const MyCoursePage({Key? key}) : super(key: key);
  @override
  State<MyCoursePage> createState() => _MyCoursePageState();
}

class _MyCoursePageState extends State<MyCoursePage> with SingleTickerProviderStateMixin {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
        // Tidak ada navigasi yang diperlukan karena kita sudah berada di halaman Home
          break;
        case 1:
        // Navigasi ke halaman My Course
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyCoursePage()), // Ganti dengan halaman My Course yang sesuai
          );
          break;
        case 2:
        // Navigasi ke halaman Inbox
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => InboxPage()), // Ganti dengan halaman Inbox yang sesuai
          );
          break;
        case 3:
        // Navigasi ke halaman Transaction
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TransactionPage()), // Ganti dengan halaman Transaction yang sesuai
          );
          break;
        case 4:
        // Navigasi ke halaman Profile
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Profile()), // Ganti dengan halaman Profile yang sesuai
          );
          break;
        default:
        // Do nothing
          break;
      }
    });
  }
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F9FF),
        title: Text(
          'My Courses',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: Color(0xFFF5F9FF),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                SearchOnly(hintText: "Search For..."),
                SizedBox(height: 10,),
                TabBar(
                  controller: _tabController,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.green[700],
                  ),
                  dividerColor: Color(0xFFF5F9FF),
                  tabs: [
                    Tab(
                      text: 'Completed',
                    ),
                    Tab(
                      text: 'Ongoing',
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                MyCourseCompleted(),
                MyCourseOngoing(),
              ],
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
