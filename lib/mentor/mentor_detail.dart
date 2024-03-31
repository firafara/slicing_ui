import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui/model/model_course.dart';
import 'package:slicing_ui/model/model_mentor.dart';

class MentorDetail extends StatefulWidget {
  final ModelMentor mentor;

  const MentorDetail({Key? key, required this.mentor}) : super(key: key);

  @override
  _MentorDetailState createState() => _MentorDetailState();
}

class _MentorDetailState extends State<MentorDetail> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            MentorProfil(mentor: widget.mentor,),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'Sed quanta s alias nunc tantum possitne tanta Nec vero sum nescius esse utilitatem in historia non modo voluptatem.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Mulish',
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(height: 10),
                    TabBar(
                      labelColor: Colors.grey[800],
                      unselectedLabelColor: Colors.grey[500],
                      indicatorColor: Colors.grey[200],
                      tabs: [
                        Tab(text: 'Course'),
                        Tab(text: 'Rating'),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          ListView(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            children: [
                              SizedBox(height: 10),
                              CourseMentor(
                                urlImage: 'images/course.png',
                                txtCategori: '3D Design',
                                txtTitle: '3D Design Advance',
                                txtPrice: '20',
                                txtRating: '4.5',
                                txtStudent: '1541',
                              ),
                              SizedBox(height: 10),
                              CourseMentor(
                                urlImage: 'images/course.png',
                                txtCategori: 'Web Development',
                                txtTitle: 'Web Development Basics',
                                txtPrice: '15',
                                txtRating: '4.2',
                                txtStudent: '2000',
                              ),
                              SizedBox(height: 20),
                            ],
                          ),
                          ListView(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            children: [
                              SizedBox(height: 8),
                              Rating(
                                imageUrl: 'images/course.png',
                                title: "Martin Sunarjo",
                                time: "The Course is Very Good dolor sit amet, consect tur adipiscing elit. Naturales divitias dixit parab les esse, quod parvo",
                              ),
                              SizedBox(height: 8),
                              Rating(
                                imageUrl: 'images/course.png',
                                title: "Martin Sunarjo",
                                time: "The Course is Very Good dolor sit amet, consect tur adipiscing elit. Naturales divitias dixit parab les esse, quod parvo",
                              ),
                            ],
                          ),
                        ],
                      ),
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
class MentorProfil extends StatelessWidget {
  final ModelMentor mentor;

  MentorProfil({required this.mentor});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.asset(
              'images/blankuser.png',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Christopher J. Levine',
            style: TextStyle(
              fontFamily: 'Jost',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Graphic Designer At Google',
            style: TextStyle(
              fontFamily: 'Jost',
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            mentor.name,
            style: TextStyle(
              fontFamily: 'Jost',
              fontSize: 21,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 5),
          Text(
            mentor.kelas,
            style: TextStyle(
              fontFamily: 'Mulish',
              fontSize: 13,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '26',
                    style: TextStyle(
                      fontFamily: 'Jost',
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Courses',
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '15800',
                    style: TextStyle(
                      fontFamily: 'Jost',
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Students',
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '8750',
                    style: TextStyle(
                      fontFamily: 'Jost',
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Ratings',
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                padding:EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: Colors.grey)
                ),
                child: Text(
                  "Follow",
                  style: TextStyle(
                    fontFamily: 'Mulish',
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                padding:EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Text(
                  "Message",
                  style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 10),
        ],
      ),
    );
  }
}

class CourseMentor extends StatelessWidget {
  final String urlImage;
  final String txtCategori;
  final String txtTitle;
  final String txtPrice;
  final String txtRating;
  final String txtStudent;

  CourseMentor({
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
      width: MediaQuery.of(context).size.width * 0.8,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
            child: Image.asset(
              urlImage,
              fit: BoxFit.cover,
              height: 130,
              width: 130,
            ),

          ),
          SizedBox(width: 8), // Spacer between image and text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          // color: Colors.orange,
                          // borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          txtCategori,
                          style: TextStyle(color: Colors.orange,fontFamily: 'Mulish'
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.bookmark_outline, color: Colors.green),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    txtTitle,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Jost',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      Text(
                        '$txtRating  |  $txtStudent',
                        style: TextStyle(fontFamily: 'Mulish'),
                      ),

                    ],
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

class Rating extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String time;

  Rating({
    required this.imageUrl,
    required this.title,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // color: Colors.white, // Ubah latar belakang menjadi putih
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(imageUrl),
                  ),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'Jost',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      time,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontFamily: 'Mulish',
                        fontSize: 13.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(CupertinoIcons.heart_fill, color: Colors.red,),
                        SizedBox(width: 5,),
                        Text("242", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12, fontFamily: "Jost"),),
                        SizedBox(width: 10,),
                        Text("2 Weeks Agos", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12, fontFamily: "Jost"),),

                      ],
                    )
                  ],
                ),
              ),
              SizedBox(width: 12),
              Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white54,
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 5,),
                          Icon(Icons.star, color: Colors.yellow, size: 15,),
                          Text("4.5", style: TextStyle(fontSize: 12, fontFamily: "Jost"),),
                          SizedBox(width: 5,),
                        ],
                      )
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.cyan[100],
          indent: 24,
          endIndent: 24,
        ),
      ],
    );
  }
}
