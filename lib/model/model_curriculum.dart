class CurriculumItem {
  final String number;
  final String title;
  final String time;


  CurriculumItem({
    required this.number,
    required this.title,
    required this.time,
  });
}
List<CurriculumItem> sampleData = [
  CurriculumItem(
    number: "1",
    title: "Why Using Graphic Design",
    time: "15 Mins",
  ),
  CurriculumItem(
    number: "2",
    title: "Principles of Typography",
    time: "30 Mins",
  ),
  CurriculumItem(
    number: "3",
    title: "Color Theory Basics",
    time: "20 Mins",
  ),
];
