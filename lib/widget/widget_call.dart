import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slicing_ui/inbox/voiceCall.dart';


class WidgetCall extends StatelessWidget {
  final String image;
  final String name;
  final String status;
  final String tanggal;

  const WidgetCall({
    required this.image,
    required this.name,
    required this.status,
    required this.tanggal
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
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
                      Row(
                        children: [
                          getStatusIcon(status),
                          Text(
                            " $status",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Mulish',
                              fontSize: 13.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            " | $tanggal",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Mulish',
                              fontSize: 13.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
                SizedBox(width: 12),
                // SizedBox(
                //   width: 22.0,
                //   height: 22.0,
                //   child: Image.asset(
                //     'assets/images/icontlp.png',
                //     fit: BoxFit.cover,

                //   ),
                // ),
                GestureDetector(
                  onTap: () {
                    // Navigasi saat gambar ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VoiceCall()),
                    );
                  },
                  child: SizedBox(
                    width: 22.0,
                    height: 22.0,
                    child: Image.asset(
                      'assets/images/icontlp.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
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
Widget getStatusIcon(String status) {
  IconData iconData;
  Color iconColor;

  switch (status) {
    case 'Incoming':
      iconData = Icons.add_box_outlined;
      iconColor = Colors.blue;
      break;
    case 'Outgoing':
      iconData = Icons.indeterminate_check_box_outlined;
      iconColor = Colors.green;
      break;
    default:
      iconData = Icons.highlight_off_outlined;
      iconColor = Colors.red;
  }

  return Icon(
    iconData,
    color: iconColor,
    size: 16,
  );
}
