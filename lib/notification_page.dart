import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F9FF), // Ubah warna AppBar
        title: Text(
          'Notification',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: Color(0xFFF5F9FF), // Ubah warna latar belakang body
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Today',
              style: TextStyle(
                fontFamily: 'Jost',
                fontSize: 16,
                color: Color(0xFF202244),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 12),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NotificationCard(
                      image: AssetImage('assets/images/notif1.png'),
                      title: 'New Category Course.!',
                      subtitle: 'New the 3D Design Course is Availa..',
                      cardColor: Color(0xFFE8F1FF), // Ubah warna kartu
                      titleFontSize: 16, // Ubah ukuran teks judul
                      subtitleFontSize: 12, // Ubah ukuran teks subjudul
                    ),
                    SizedBox(height: 12),
                    NotificationCard(
                      image: AssetImage('assets/images/notif2.png'),
                      title: 'New Category Course.!',
                      subtitle: 'New the 3D Design Course is Availa…',
                      cardColor: Color(0xFFE8F1FF), // Ubah warna kartu
                      titleFontSize: 16, // Ubah ukuran teks judul
                      subtitleFontSize: 12, // Ubah ukuran teks subjudul
                    ),
                    SizedBox(height: 12),
                    NotificationCard(
                      image: AssetImage('assets/images/notif3.png'),
                      title: 'Today’s Special Offers',
                      subtitle: 'You Have made a Coure Payment.',
                      cardColor: Color(0xFFE8F1FF), // Ubah warna kartu
                      titleFontSize: 16, // Ubah ukuran teks judul
                      subtitleFontSize: 12, // Ubah ukuran teks subjudul
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Yesterday',
                      style: TextStyle(
                        fontFamily: 'Jost',
                        fontSize: 16,
                        color: Color(0xFF202244),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 12),
                    NotificationCard(
                      image: AssetImage('assets/images/notif4.png'),
                      title: 'Credit Card Connected.!',
                      subtitle: 'Credit Card has been Linked.!',
                      cardColor: Color(0xFFE8F1FF), // Ubah warna kartu
                      titleFontSize: 16, // Ubah ukuran teks judul
                      subtitleFontSize: 12, // Ubah ukuran teks subjudul
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Nov 20, 2022',
                      style: TextStyle(
                        fontFamily: 'Jost',
                        fontSize: 16,
                        color: Color(0xFF202244),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 12),
                    NotificationCard(
                      image: AssetImage('assets/images/notif5.png'),
                      title: 'Account Setup Successful.!',
                      subtitle: 'Your Account has been Created.',
                      cardColor: Color(0xFFE8F1FF), // Ubah warna kartu
                      titleFontSize: 16, // Ubah ukuran teks judul
                      subtitleFontSize: 12, // Ubah ukuran teks subjudul
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final ImageProvider image;
  final String title;
  final String subtitle;
  final Color cardColor;
  final double titleFontSize;
  final double subtitleFontSize;

  const NotificationCard({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.cardColor,
    required this.titleFontSize,
    required this.subtitleFontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor, // Gunakan warna kartu yang disediakan
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Row(
          children: [
            Image(image: image, width: 80, height: 80, fit: BoxFit.cover),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: titleFontSize, // Gunakan ukuran teks judul yang disediakan
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF202244),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontFamily: 'Mulish',
                    fontSize: subtitleFontSize, // Gunakan ukuran teks subjudul yang disediakan
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF545454),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
