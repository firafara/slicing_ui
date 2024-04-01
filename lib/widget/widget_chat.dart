import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slicing_ui/inbox/messages.dart';

class WidgetChat extends StatelessWidget {
  final String image;
  final String name;
  final String message;
  final String chat;
  final String time;

  const WidgetChat({
    required this.image,
    required this.name,
    required this.message,
    required this.chat,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {

            Navigator.push(context, MaterialPageRoute(builder: (context) => Messages()));
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            child: Container(
              // color: Colors.white, // Ubah latar belakang menjadi putih
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(image),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            fontFamily: 'Jost',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          message,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Mulish',
                            fontSize: 13.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue, // Warna latar belakang lingkaran
                        child: Text(
                          chat,
                          style: TextStyle(
                            color: Colors.white, // Ubah warna teks menjadi putih
                            fontSize: 10.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Row( // Baris baru untuk waktu dan circle
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            time,
                            style: TextStyle(
                              fontSize: 11.0,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF545454),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Divider(
          color: Colors.grey,
          thickness: 0.5,
          indent: 24,
          endIndent: 24,
        ),
      ],
    );
  }
}
