import 'package:flutter/material.dart';

class PopularCourse extends StatefulWidget {
  // const PopularCourse({super.key});
  final List<String> categories;

  const PopularCourse({Key? key, required this.categories}) : super(key: key);

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
  int _selectedIndex = -1;
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
            onPressed: () {
              // Tambahkan kode fungsi pencarian di sini
              // Misalnya: Navigator.push untuk menuju layar pencarian
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Expanded(
            flex: 1,
            child:SizedBox(
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
                        color: _selectedIndex == index ? Colors.green : Colors.grey[200],
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
            ),
          ),
          SizedBox(height: 10,),
          // Expanded(
          //   flex: 15,
          //   child: ListView.builder(
          //     scrollDirection: Axis.vertical,
          //     itemCount: courses.length,
          //     itemBuilder: (BuildContext context, int index) {
          //       Course course = courses[index];
          //       return WidgetCourseCompleted(
          //         title: course.txtTitle,
          //         imagePath: course.urlImage,
          //         rating: course.txtRating,
          //         subtitle: course.txtCategori,
          //         duration: course.txtDuration,
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
