import 'package:flutter/material.dart';
import 'package:slicing_ui/mentor/mentor_detail.dart';
import 'package:slicing_ui/mentor/mentor_list.dart';
import 'package:slicing_ui/widget/widget_mentor.dart';

import '../model/model_mentor.dart';

class TopMentor extends StatefulWidget {
  const TopMentor({Key? key}) : super(key: key);

  @override
  State<TopMentor> createState() => _TopMentorState();
}

class _TopMentorState extends State<TopMentor> {
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
          'Top Mentor',
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MentorList()),
                );
            },
          ),
        ],
      ),
      body: Column(
        children: [
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
