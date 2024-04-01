import 'package:flutter/material.dart';
import 'package:slicing_ui/widget/widget_chatBox.dart';
import '../widget/widget_messages.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F9FF), // Ubah warna app bar
        title: Text(
          'Inbox',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search), // Icon search
            onPressed: () {
              // Aksi yang dilakukan ketika ikon search ditekan
            },
          ),
        ],
      ),
      backgroundColor: Color(0xFFF5F9FF), // Ubah warna latar belakang body
      body: Column(
        children: <Widget>[
          ReceivedBubble(
            chat: 'Hi, Nicholas Good Evening',
            time: '10:45',
          ),
          ReceivedBubble(
            chat: 'How was your UI/UX Design Course Like.?',
            time: '12:45',
          ),
          SentBubble(
            chat: 'Hi, Morning too Ronald',
            time: '15:29',
          ),
          SendImage(
            imagePath1: 'assets/images/image send.png',
            imagePath2: 'assets/images/image send.png',
            time: '15:52',
          ),
          SentBubble(
            chat: 'Hello, i also just finished the Sketch Basic',
            time: '15:29',
          ),
          ReceivedBubble(
            chat: 'OMG, This is Amazing..',
            time: '13:59',
          ),
          SizedBox(height: 40),
          MessageColumn(),
        ],
      ),

    );

  }
}

class ImageTextWidget extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String subtitle;

  const ImageTextWidget({
    required this.imageAsset,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 220,
          height: 220,
          child: Image.asset(imageAsset),
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontFamily: 'Mulish',
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
