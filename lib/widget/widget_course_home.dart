// import 'package:flutter/material.dart';
//
// class WidgetCourseHome extends StatelessWidget {
//   final String urlImage;
//   final String txtCategori;
//   final String txtTitle;
//   final String txtPrice;
//   final String txtRating;
//   final String txtStudent;
//
//   WidgetCourseHome({
//     required this.urlImage,
//     required this.txtCategori,
//     required this.txtTitle,
//     required this.txtPrice,
//     required this.txtRating,
//     required this.txtStudent,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width * 0.8, // Mengatur lebar container agar sesuai dengan layar
//       margin: EdgeInsets.symmetric(horizontal: 8), // Mengurangi margin agar item dapat lebih dekat satu sama lain
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Colors.white,
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(15),
//               topRight: Radius.circular(15),
//             ),
//             child: Image.network(
//               urlImage,
//               fit: BoxFit.cover,
//               height: 130,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Container(
//                   padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                   decoration: BoxDecoration(
//                     color: Colors.orange,
//                     borderRadius: BorderRadius.circular(5),
//                   ),
//                   child: Text(
//                     txtCategori,
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//                 Spacer(),
//                 Icon(Icons.bookmark_outline, color: Colors.green),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               txtTitle,
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: Row(
//               children: [
//                 Text(
//                   '\$$txtPrice ',
//                   style: TextStyle(
//                     color: Colors.blue,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text("  |  "),
//                 Icon(Icons.star, color: Colors.yellow),
//                 Text(
//                   '$txtRating  |  $txtStudent',
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class WidgetCourseHome extends StatelessWidget {
  final String urlImage;
  final String txtCategori;
  final String txtTitle;
  final String txtPrice;
  final String txtRating;
  final String txtStudent;

  WidgetCourseHome({
    required this.urlImage,
    required this.txtCategori,
    required this.txtTitle,
    required this.txtPrice,
    required this.txtRating,
    required this.txtStudent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8, // Mengatur lebar container agar sesuai dengan layar
      margin: EdgeInsets.symmetric(horizontal: 8), // Mengurangi margin agar item dapat lebih dekat satu sama lain
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.asset(
              urlImage, // Using asset image here
              fit: BoxFit.cover,
              height: 130,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    txtCategori,
                    style: TextStyle(color: Colors.orange, fontFamily: 'Mulish'), // Set text color to orange
                  ),
                ),
                Spacer(),
                Icon(Icons.bookmark_outline, color: Colors.green),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Text(
                txtTitle,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Jost'
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Row(
                children: [
                  Text(
                    '\$$txtPrice ',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Mulish',
                    ),
                  ),
                  Text("  |  "),
                  Icon(Icons.star, color: Colors.yellow),
                  Text(
                    '$txtRating  |  $txtStudent',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
