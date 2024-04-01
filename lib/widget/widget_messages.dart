import 'package:flutter/material.dart';

class ReceivedBubble extends StatelessWidget {
  final String chat;
  final String time;

  ReceivedBubble({required this.chat, required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10.0),
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            decoration: BoxDecoration(
              color: Color(0xFF4C935E),
              borderRadius: BorderRadius.only(
                // topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
                // bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  chat,
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  time,
                  style: TextStyle(
                    fontFamily: 'Mulish',
                    fontSize: 11.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SentBubble extends StatelessWidget {
  final String chat;
  final String time;

  SentBubble({required this.chat, required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10.0),
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            decoration: BoxDecoration(
              color: Color(0xFFE8F1FF),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                // topRight: Radius.circular(15.0),
                // bottomRight: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end, // Diubah menjadi end
              children: <Widget>[
                Text(
                  chat,
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF202244),
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  time,
                  style: TextStyle(
                    fontFamily: 'Mulish',
                    fontSize: 11.0,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF202244),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



class SendImage extends StatelessWidget {
  final String imagePath1;
  final String imagePath2;
  final String time;

  SendImage({required this.imagePath1, required this.imagePath2, required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Image.asset(
                imagePath1,
                width: 80,
                height: 80,
              ),
              SizedBox(height: 5.0),

            ],
          ),
          SizedBox(width: 10), // Spacer between images
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Image.asset(
                imagePath2,
                width: 80,
                height: 80,
              ),
              SizedBox(height: 5.0),
              Text(
                time,
                style: TextStyle(
                  fontFamily: 'Mulish',
                  fontSize: 11.0,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF202244),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
