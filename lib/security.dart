import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui/widget/custom_button.dart';
import 'package:slicing_ui/widget/custom_buttonPolos.dart';
import 'package:slicing_ui/widget/custom_swichbutton.dart';

class SecurityPage extends StatefulWidget {
  @override
  State<SecurityPage> createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F9FF), // Ubah warna app bar
        title: Text(
          'Security',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: Color(0xFFF5F9FF), // Ubah warna latar belakang body
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          children: [
            CustomSwitchButton(
              text: "Remember Me",
              initialValue: true,
              onChanged: (value) {},
            ),
            SizedBox(height: 10),
            CustomSwitchButton(
              text: "Biometric ID",
              initialValue: true,
              onChanged: (value) {},
            ),
            SizedBox(height: 10),
            CustomSwitchButton(
              text: "Face ID",
              initialValue: false,
              onChanged: (value) {},
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Google Authenticator',
                    style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Jost',
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 10),
                Icon(Icons.arrow_forward_ios), // Icon ">"
              ],
            ),
            SizedBox(height: 250),
            CustomButtonPolos(
              text: "Change PIN",
              textStyle: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Jost',
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold),
              onPressed: () {
                // Navigasi ke halaman untuk mengubah PIN
                // Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePinPage()));
              },
            ),
            SizedBox(height: 20),
            CustomButton(
              text: "Change Password",
              onPressed: () {
                // Navigasi ke halaman untuk mengubah password
                // Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePasswordPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
