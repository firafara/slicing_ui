import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui/inbox/inboxPage.dart';
import 'package:slicing_ui/myCourse/myCoursePage.dart';
import 'package:slicing_ui/profile/edit_profile.dart';
import 'package:slicing_ui/profile/invitedFriendPage.dart';
import 'package:slicing_ui/profile/languagePage.dart';
import 'package:slicing_ui/profile/notification_profile.dart';
import 'package:slicing_ui/profile/paymentOptionPage.dart';
import 'package:slicing_ui/profile/security.dart';
import 'package:slicing_ui/profile/termConditionPage.dart';
import 'package:slicing_ui/transactionPage.dart';
import 'package:slicing_ui/widget/widget_profile_menu.dart';

// import '../widget/pageBottomBar.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});
  @override
  State<Profile> createState() => _ProfileState();
}


class _ProfileState extends State<Profile> {
  int _selectedIndex = 4;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
        // Tidak ada navigasi yang diperlukan karena kita sudah berada di halaman Home
          break;
        case 1:
        // Navigasi ke halaman My Course
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyCoursePage()), // Ganti dengan halaman My Course yang sesuai
          );
          break;
        case 2:
        // Navigasi ke halaman Inbox
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => InboxPage()), // Ganti dengan halaman Inbox yang sesuai
          );
          break;
        case 3:
        // Navigasi ke halaman Transaction
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TransactionPage()), // Ganti dengan halaman Transaction yang sesuai
          );
          break;
        case 4:
        // Navigasi ke halaman Profile
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Profile()), // Ganti dengan halaman Profile yang sesuai
          );
          break;
        default:
        // Do nothing
          break;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          title: Text(
            'Profile',
            style: TextStyle(
              fontFamily: 'Jost',
              fontSize: 21,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
                width: double.infinity,
                color: Colors.grey[100],
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  padding: EdgeInsets.all(8),
                  margin:
                  EdgeInsets.only(bottom: 16, top: 70, left: 16, right: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Wahyu Khairat",
                        style: TextStyle(
                          fontFamily: 'Jost',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2, // Atur maksimum 2 baris
                        overflow: TextOverflow
                            .ellipsis, // Tambahkan elipsis jika melebihi 2 baris
                      ),
                      Text(
                        "Tester@gmail.com",
                        style: TextStyle(
                            fontFamily: 'Jost',
                            fontSize: 14,
                            color: Colors.grey),
                        maxLines: 2, // Atur maksimum 2 baris
                        overflow: TextOverflow
                            .ellipsis, // Tambahkan elipsis jika melebihi 2 baris
                      ),
                      SizedBox(height: 10,),
                      WidgetProfileMenu(
                          title: "Edit Profile",
                          navigatorPush: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      EditProfilePage()), // Ganti dengan halaman yang sesuai
                            );
                          },
                          icon: Icons.perm_identity_rounded),
                      WidgetProfileMenu(
                          title: "Payment Option",
                          navigatorPush: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PaymentOptionPage()), // Ganti dengan halaman yang sesuai
                            );
                          },
                          icon: Icons.account_balance_wallet_outlined),
                      WidgetProfileMenu(
                          title: "Notification",
                          navigatorPush: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      NotificationProfile()), // Ganti dengan halaman yang sesuai
                            );
                          },
                          icon: Icons.notifications_none_rounded),
                      WidgetProfileMenu(
                          title: "Security",
                          navigatorPush: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SecurityPage()), // Ganti dengan halaman yang sesuai
                            );
                          },
                          icon: Icons.security_outlined),
                      WidgetProfileMenu(
                          title: "Language",
                          navigatorPush: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      LanguagePage()), // Ganti dengan halaman yang sesuai
                            );
                          },
                          icon: Icons.language_outlined),
                      WidgetProfileMenu(
                          title: "Dark Mode",
                          navigatorPush: (){

                          },
                          icon: Icons.remove_red_eye_outlined),
                      WidgetProfileMenu(
                          title: "Terms & Conditions",
                          navigatorPush: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      TermConditionPage()), // Ganti dengan halaman yang sesuai
                            );
                          },
                          icon: Icons.shield_outlined),
                      WidgetProfileMenu(
                          title: "Help Center",
                          navigatorPush: (){

                          },
                          icon: Icons.help_outline),
                      WidgetProfileMenu(
                          title: "Invite Friend",
                          navigatorPush: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      InvitedFriendPage()), // Ganti dengan halaman yang sesuai
                            );
                          },
                          icon: Icons.add_reaction_outlined),
                    ],
                  ),
                )),
            Positioned(
              top: 20,
              left: 0,
              right: 0,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors
                      .grey[100], // Ganti warna lingkaran sesuai kebutuhan
                ),
                child: Center(
                  child: Image.asset(
                      'assets/images/profile.png'), // Ganti dengan gambar yang diinginkan
                ),
              ),
            )
          ],
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_copy_sharp),
            label: 'My Course',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Indox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_card),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue, // Selected item color
        unselectedItemColor: Colors.black, // Unselected item color
        showSelectedLabels: true, // Show labels for selected items
        showUnselectedLabels: true, // Show labels for unselected items
        onTap: _onItemTapped,
      ),
    );
  }
}
