import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui/course/detail_course_curriculum.dart';
import 'package:slicing_ui/myCourse/sertifikat.dart';
import 'package:slicing_ui/myCourse/vidioPlay.dart';
import 'package:slicing_ui/widget/custom_button.dart';
import 'package:slicing_ui/widget/widget_search.dart';
import 'package:slicing_ui/myCourse/sertifikat.dart';

import '../model/model_curriculum.dart';
import '../widget/widget_curriculum_item.dart';

class CompletedLesson extends StatefulWidget {
  const CompletedLesson({Key? key}) : super(key: key);
  @override
  State<CompletedLesson> createState() => _CompletedLessonState();
}

class _CompletedLessonState extends State<CompletedLesson>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F9FF),
        title: Text(
          'My Courses',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: Color(0xFFF5F9FF),
      body: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SearchOnly(hintText: "3D Design Illustration"),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20,),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontFamily: 'Jost',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Section 01 - ',
                                ),
                                TextSpan(
                                  text: 'Introducation',
                                  style: TextStyle(
                                    color: Colors.blue, // Ubah warna teks untuk variabel ini
                                  ),
                                )

                              ],
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 340,
                            child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: sampleData.length,
                              itemBuilder: (BuildContext context, int index) {
                                CurriculumItem curriculcum = sampleData[index];
                                return GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => VideoPlay()));
                                  },
                                  child: WidgetCurriculcumItem(
                                    number: curriculcum.number,
                                    title: curriculcum.title,
                                    time: curriculcum.time,
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(height: 20,),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontFamily: 'Jost',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Section 02 - ',
                                ),
                                TextSpan(
                                  text: 'Graphic design',
                                  style: TextStyle(
                                    color: Colors.blue, // Ubah warna teks untuk variabel ini
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: double.maxFinite,
                            child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: sampleData.length,
                              itemBuilder: (BuildContext context, int index) {
                                CurriculumItem curriculcum = sampleData[index];
                                return WidgetCurriculcumItem(
                                  number: curriculcum.number,
                                  title: curriculcum.title,
                                  time: curriculcum.time,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 16,
                left: 16,
                right: 16,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Certifikat()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            color: Colors.white70,
                            border: Border.all(color: Colors.grey)
                        ),
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                        child: Image.asset('images/IcSertif.png', height:20,),
                      ),
                    ),
                    SizedBox(width: 10,),
                    ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        backgroundColor: Colors.blue,
                        // Menetapkan lebar maksimum sesuai lebar yang tersedia
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Start Course Again",
                                style: TextStyle(
                                  color: Colors.white,
                                  height: 3,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                )
            )
          ]
      ),
    );
  }
}
