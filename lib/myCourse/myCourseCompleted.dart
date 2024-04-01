import 'package:flutter/cupertino.dart';

import '../model/model_course.dart';
import '../widget/widget_course_completed.dart';

class MyCourseCompleted extends StatefulWidget {
  const MyCourseCompleted({super.key});

  @override
  State<MyCourseCompleted> createState() => _MyCourseCompletedState();
}

class _MyCourseCompletedState extends State<MyCourseCompleted> {
  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        height: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: courses.length,
          itemBuilder: (BuildContext context, int index) {
            Course course = courses[index];
            return WidgetCourseCompleted(
              title: course.txtTitle,
              imagePath: course.urlImage,
              rating: course.txtRating,
              subtitle: course.txtCategori,
              duration: course.txtDuration,
            );
          },
        ),
      );
  }
}
