import 'package:flutter/material.dart';

class CourseSectionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Section 01 - Introduction',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                '25 Mins',
                style: TextStyle(
                  fontFamily: 'Jost',
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey[200],
            child: Text('01'),
          ),
          title: Text(
            'Why Using Graphic Design',
            style: TextStyle(
              fontFamily: 'Jost',
            ),
          ),
          subtitle: Text(
            '15 Mins',
            style: TextStyle(
              fontFamily: 'Jost',
            ),
          ),
          trailing: Icon(Icons.play_circle_fill, color: Colors.blue),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey[200],
            child: Text('02'),
          ),
          title: Text(
            'Setup Your Graphic Design',
            style: TextStyle(
              fontFamily: 'Jost',
            ),
          ),
          subtitle: Text(
            '10 Mins',
            style: TextStyle(
              fontFamily: 'Jost',
            ),
          ),
          trailing: Icon(Icons.play_circle_fill, color: Colors.blue),
        ),
        // Add more ListTiles as needed for each section
      ],
    );
  }
}
