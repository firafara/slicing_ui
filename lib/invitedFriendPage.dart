import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slicing_ui/widget/widget_friend.dart';


class InvitedFriendPage extends StatefulWidget {

  @override
  State<InvitedFriendPage> createState() => _InvitedFriendPageState();
}

class _InvitedFriendPageState extends State<InvitedFriendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Invite Friends',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.grey[100],
      ),
      body: Container(
        color: Colors.grey[100],
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Column(
                children: [
                  WidgetFriend(namaUser: "Wahyu Khairat", imageUrl: "https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671142.jpg?w=740&t=st=1711358215~exp=1711358815~hmac=1b077efa11fc4826725d3a1a6490cdd8c76c79ef1284b9d642dfbac5053415f4", section: "(+1) 702-897-7965", invited: true,),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 16),child: Divider()),
                  WidgetFriend(namaUser: "Fira Faradilla", imageUrl: "https://img.freepik.com/free-psd/3d-render-avatar-character_23-2150611734.jpg?w=740&t=st=1711358268~exp=1711358868~hmac=3963c35961c36ad1ac03db6c9d4843bb4129c57072050341ed4cbe822aa82b8c", section: "(+62) 812-1897-7965", invited: true,),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 16),child: Divider()),
                  WidgetFriend(namaUser: "Rizky Prasetyo", imageUrl: "https://img.freepik.com/free-psd/3d-rendering-avatar_23-2150833572.jpg?w=740&t=st=1711358245~exp=1711358845~hmac=b6498ef96b42b8511153c33b34445a8c02fd3a6aef9f06037ae8a8bb14d4f5ea", section: "(+1) 723-997-7382", invited: true,),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 16),child: Divider()),
                  WidgetFriend(namaUser: "Wulandari", imageUrl: "https://img.freepik.com/free-psd/3d-illustration-person-with-glasses_23-2149436185.jpg?w=740&t=st=1711358344~exp=1711358944~hmac=ed1b8beef626c59a289888dd982c3189d94c7b7be23be76717333b56efe1df06", section: "(+1) 601-897-1714", invited: false,),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 16),child: Divider()),
                  WidgetFriend(namaUser: "Januardi", imageUrl: "https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671126.jpg?w=740&t=st=1711358307~exp=1711358907~hmac=97c8f25d0c61356e88546d01f401110f46676d6d7068ea07ce30b4d7922108bd", section: "(+1) 802-312-3206", invited: false,),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Share Invite Via',
                    style: TextStyle(
                      fontFamily: 'Jost',
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Image.asset("assets/images/fb.png"),
                      SizedBox(width: 20,),
                      Image.asset("assets/images/twiter.png"),
                      SizedBox(width: 20,),
                      Image.asset("assets/images/gplus.png"),
                      SizedBox(width: 20,),
                      Image.asset("assets/images/wa.png"),

                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
