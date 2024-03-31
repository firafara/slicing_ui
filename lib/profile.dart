import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui/edit_profile.dart';
import 'package:slicing_ui/invitedFriendPage.dart';
import 'package:slicing_ui/languagePage.dart';
import 'package:slicing_ui/notification_profile.dart';
import 'package:slicing_ui/paymentOptionPage.dart';
import 'package:slicing_ui/security.dart';
import 'package:slicing_ui/termConditionPage.dart';
import 'package:slicing_ui/widget/widget_profile_menu.dart';

// import '../widget/pageBottomBar.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
        ));
  }
}
