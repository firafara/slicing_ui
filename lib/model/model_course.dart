
class Course {
  final String urlImage;
  final String txtCategori;
  final String txtTitle;
  final String txtPrice;
  final String txtRating;
  final String txtStudent;
  final String txtDuration;
  final String txtCompletedTask;
  final String txtTotalTask;

  Course({
    required this.urlImage,
    required this.txtCategori,
    required this.txtTitle,
    required this.txtPrice,
    required this.txtRating,
    required this.txtStudent,
    required this.txtDuration,
    required this.txtCompletedTask,
    required this.txtTotalTask,
  });
}

List<Course> courses = [
  Course(
    urlImage: 'assets/images/course.png',
    txtCategori: 'Graphic Design',
    txtTitle: 'Graphic Design Advanced',
    txtPrice: '20',
    txtRating: '4.5',
    txtStudent: '1541',
    txtDuration: '2 Hrs 36 Mins',
    txtTotalTask: '125',
    txtCompletedTask: '93'
  ),
  Course(
    urlImage: 'https://www.classcentral.com/report/wp-content/uploads/2022/04/BCG-Web-Development-NEW-Banner.png',
    txtCategori: 'Web Development',
    txtTitle: 'Advertisement Design',
    txtPrice: '15',
    txtRating: '4.2',
    txtStudent: '2000',
    txtDuration: '3 Hrs 28 Mins',
      txtTotalTask: "110",
      txtCompletedTask: "88"
  ),
  Course(
    urlImage: 'https://images.ui8.net/uploads/cover_1706876955797.png',
    txtCategori: 'Mobile App Development',
    txtTitle: 'Flutter App Development',
    txtPrice: '25',
    txtRating: '4.8',
    txtStudent: '1800',
    txtDuration: '4 Hrs 05 Mins',
    txtTotalTask: "31",
    txtCompletedTask: "12"

  ),
  Course(
    urlImage: 'https://codingstudio.id/wp-content/uploads/2024/02/Machine-Learning-Adalah-Pengertian-Manfaat-dan-Cara-Belajarnya-768x384.jpg',
    txtCategori: 'Graphic Design',
    txtTitle: 'Graphic Design Advanced',
    txtPrice: '30',
    txtRating: '4.7',
    txtStudent: '2200',
      txtDuration: '1 Hrs 40 Mins',
      txtTotalTask: "98",
      txtCompletedTask: "56"
  ),
  Course(
    urlImage: 'https://cdn-az.allevents.in/events5/banners/2e9077edde411e8447d549fcf91d50119403bf5557adf3271caf4373e4df5b84-rimg-w1200-h600-gmir.jpg',
    txtCategori: 'Graphic Design',
    txtTitle: 'Graphic Design Fundamentals',
    txtPrice: '18',
    txtRating: '4.4',
    txtStudent: '1700',
      txtDuration: '2 Hrs 18 Mins',
      txtTotalTask: "40",
      txtCompletedTask: "30"
  ),
];
