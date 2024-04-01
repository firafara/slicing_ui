// Model data untuk Widget Inbox
class Inbox {
  final String urlImage;
  final String txtName;
  final String txtMessage;
  final String txtChat;
  final String txtTime;
  final String txtStatus; // Menyimpan status panggilan
  final String txtTanggal; // Menyimpan tanggal panggilan

  Inbox({
    required this.urlImage,
    required this.txtName,
    required this.txtMessage,
    required this.txtChat,
    required this.txtTime,
    required this.txtStatus,
    required this.txtTanggal,
  });
}

// Contoh data
List<Inbox> inboxs = [
  Inbox(
      urlImage: 'assets/images/imageprofile.png',
      txtName: 'Virginia M. Patterson',
      txtMessage: 'Hi, Good Evening Bro.!',
      txtChat: '03',
      txtTime: '12:00',
      txtStatus: 'Incoming',
      txtTanggal: 'Nov 03, 202X'
  ),
  Inbox(
      urlImage: 'assets/images/imageprofile.png',
      txtName: 'Jonathon K. Nix',
      txtMessage: 'I Just Finished It.!',
      txtChat: '08',
      txtTime: '11:00',
      txtStatus: 'Incoming',
      txtTanggal: 'Nov 05, 202X'
  ),
  Inbox(
      urlImage: 'assets/images/imageprofile.png',
      txtName: 'Duncan E. Hoffman',
      txtMessage: 'How are you?',
      txtChat: '05',
      txtTime: '10:00',
      txtStatus: 'Outgoing',
      txtTanggal: 'Nov 06, 202X'
  ),
  Inbox(
      urlImage: 'assets/images/imageprofile.png',
      txtName: 'Roy R. McCraney',
      txtMessage: 'OMG, This is Amazing..',
      txtChat: '07',
      txtTime: '14:59',
      txtStatus: 'Missed',
      txtTanggal: 'Nov 15, 202X'
  ),
  Inbox(
      urlImage: 'assets/images/imageprofile.png',
      txtName: 'Janice R. Norris',
      txtMessage: 'Wow, This is Really Epic',
      txtChat: '02',
      txtTime: '09:29',
      txtStatus: 'Incoming',
      txtTanggal: 'Nov 20, 202X'
  ),
];
