
// Model data untuk Widget Transaction Home
class Transaction {
  final String urlImage;
  final String txtCategori;
  final String txtTitle;
  final String txtStatus;

  Transaction({
    required this.urlImage,
    required this.txtCategori,
    required this.txtTitle,
    required this.txtStatus
  });
}

// Contoh data
List<Transaction> transactions = [
  Transaction(
      urlImage: 'https://www.classcentral.com/report/wp-content/uploads/2022/04/BCG-Web-Development-NEW-Banner.png',
      txtCategori: 'Web Development',
      txtTitle: 'Web Development Basics',
      txtStatus: 'paid'
  ),
  Transaction(
      urlImage: 'https://images.ui8.net/uploads/cover_1706876955797.png',
      txtCategori: 'Mobile App Development',
      txtTitle: 'Flutter App Development',
      txtStatus: 'paid'
  ),
  Transaction(
      urlImage: 'https://codingstudio.id/wp-content/uploads/2024/02/Machine-Learning-Adalah-Pengertian-Manfaat-dan-Cara-Belajarnya-768x384.jpg',
      txtCategori: 'Machine Learning',
      txtTitle: 'Intro to Machine Learning',
      txtStatus: 'paid'
  ),
  Transaction(
      urlImage: 'https://cdn-az.allevents.in/events5/banners/2e9077edde411e8447d549fcf91d50119403bf5557adf3271caf4373e4df5b84-rimg-w1200-h600-gmir.jpg',
      txtCategori: 'Graphic Design',
      txtTitle: 'Graphic Design Fundamentals',
      txtStatus: 'Paid'
  ),
  Transaction(
      urlImage: 'https://www.classcentral.com/report/wp-content/uploads/2022/04/BCG-Web-Development-NEW-Banner.png',
      txtCategori: 'Web Development',
      txtTitle: 'Web Development Basics',
      txtStatus: 'paid'
  ),
  Transaction(
      urlImage: 'https://images.ui8.net/uploads/cover_1706876955797.png',
      txtCategori: 'Mobile App Development',
      txtTitle: 'Flutter App Development',
      txtStatus: 'paid'
  ),
  Transaction(
      urlImage: 'https://codingstudio.id/wp-content/uploads/2024/02/Machine-Learning-Adalah-Pengertian-Manfaat-dan-Cara-Belajarnya-768x384.jpg',
      txtCategori: 'Machine Learning',
      txtTitle: 'Intro to Machine Learning',
      txtStatus: 'paid'
  ),
  Transaction(
      urlImage: 'https://cdn-az.allevents.in/events5/banners/2e9077edde411e8447d549fcf91d50119403bf5557adf3271caf4373e4df5b84-rimg-w1200-h600-gmir.jpg',
      txtCategori: 'Graphic Design',
      txtTitle: 'Graphic Design Fundamentals',
      txtStatus: 'Paid'
  ),
];
