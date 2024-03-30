import 'dart:convert';
import 'dart:math';

class ModelMentor {
  final String imageUrl;
  final String name;
  final String kelas;

  ModelMentor({required this.imageUrl, required this.name, required this.kelas});
}

Future<List<ModelMentor>> fetchUsers() async {
  // Instead of fetching data from the network, generate dummy data
  final List<String> kelasList = [
    '3D Design',
    'Web Programmer',
    'Mobile Developer',
    'Personal Development',
    'Office Productivity'
  ];
  final List<ModelMentor> users = [];

  // Generate dummy users with blankuser.png as the image
  for (var i = 0; i < 10; i++) {
    final String imageUrl = 'assets/images/blankuser.png';
    final String name = 'User ${i + 1}';
    final String randomKelas = kelasList[Random().nextInt(kelasList.length)];
    users.add(ModelMentor(imageUrl: imageUrl, name: name, kelas: randomKelas));
  }

  return users;
}
