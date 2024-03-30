
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalListPopularCourse extends StatefulWidget {
  final List<String> categories;

  const HorizontalListPopularCourse({Key? key, required this.categories}) : super(key: key);

  @override
  _HorizontalListPopularCourseState createState() => _HorizontalListPopularCourseState();
}

class _HorizontalListPopularCourseState extends State<HorizontalListPopularCourse> {
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
    );
  }
}