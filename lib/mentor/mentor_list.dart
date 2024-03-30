
import 'package:flutter/material.dart';
import 'package:slicing_ui/course/course_list.dart';
import 'package:slicing_ui/model/model_mentor.dart';
import 'package:slicing_ui/widget/widget_mentor.dart';

class MentorList extends StatefulWidget {
  const MentorList({super.key});

  @override
  State<MentorList> createState() => _MentorListState();
}

class _MentorListState extends State<MentorList> {
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
          'Mentors',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
        ],
      ),
      backgroundColor: Color(0xFFF5F9FF),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                      _searchController.clear();
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
                        Icons.close,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), // Add some space between the buttons
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
                      backgroundColor: Colors.white, // Warna latar belakang
                    ),
                    child: Text('Course', style: TextStyle(fontFamily: 'Mulish', color: Colors.black),),
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
                      backgroundColor: Colors.green,
                    ),
                    child: Text('Mentor', style: TextStyle(fontFamily: 'Mulish', color: Colors.white),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Add some space between the buttons

            Expanded(
              child: FutureBuilder<List<ModelMentor>>(
                future: fetchUsers(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text('Error: ${snapshot.error}'),
                    );
                  } else {
                    return SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return WidgetMentor(
                            namaUser: snapshot.data![index].name,
                            imageUrl: snapshot.data![index].imageUrl,
                            section: snapshot.data![index].kelas,
                          );
                        },
                      ),
                    );
                  }
                },
              ),
            )
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
