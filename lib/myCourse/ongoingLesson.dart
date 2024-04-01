import 'package:flutter/material.dart';
import 'package:slicing_ui/myCourse/vidioPlay.dart';
import 'package:slicing_ui/model/model_curriculum.dart';
import 'package:slicing_ui/widget/custom_button.dart';
import 'package:slicing_ui/widget/widget_curriculum_item.dart';
import 'package:slicing_ui/widget/widget_search.dart';
import '../widget/custom_dialog.dart';
import 'myCoursePage.dart';

class OngoingLesson extends StatefulWidget {
  const OngoingLesson({Key? key}) : super(key: key);

  @override
  State<OngoingLesson> createState() => _OngoingLessonState();
}

class _OngoingLessonState extends State<OngoingLesson>
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

  void _showCongratulationsDialog() {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          title: Text(""),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'images/completed_course.png',
                height: 200,
                width: 200,
              ),
              Text(
                "Congratulations",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Jost',
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Your Course is Complete. Purchase a New Course",
                style: TextStyle(fontFamily: 'Mulish'),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyCoursePage()),
                  );
                },
                child: Text("Home MyCourse"),
              )
            ],
          ),
        );
      },
    );
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchOnly(hintText: "3D Design Illustration"),
              SizedBox(height: 20),
              SectionCurriculum(
                title: 'Section 01 - Introduction',
                data: sampleData,
              ),
              SizedBox(height: 20),
              SectionCurriculum(
                title: 'Section 02 - Graphic Design',
                data: sampleData,
              ),
              SizedBox(height: 16),
              CustomButton(
                  onPressed: () {
                    _showCongratulationsDialog();
                  },
                  text: "Continue Courses",
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionCurriculum extends StatelessWidget {
  final String title;
  final List<CurriculumItem> data;

  const SectionCurriculum({
    Key? key,
    required this.title,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                fontFamily: 'Jost',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 340,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                CurriculumItem curriculum = data[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => VideoPlay()));
                  },
                  child: WidgetCurriculumItem(
                    number: curriculum.number,
                    title: curriculum.title,
                    time: curriculum.time,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
