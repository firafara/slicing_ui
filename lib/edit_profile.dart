import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui/profile/create_pin.dart';
import 'package:slicing_ui/widget/custom_button.dart';
import 'package:slicing_ui/widget/custom_text_field.dart';

import '../widget/custom_date_picker.dart';
import '../widget/custom_gender_dropdown.dart';

class EditProfilePage extends StatefulWidget {

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController txtNama = TextEditingController();
  TextEditingController txtNicName = TextEditingController();
  TextEditingController txtDate = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPhone = TextEditingController();
  TextEditingController txtStudent = TextEditingController();

  String? txtGender;
  File? _image;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Row(
          children: [
            Text(
              'Edit Profile',
              style: TextStyle(
                fontFamily: 'Jost',
                fontSize: 21,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[100]
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[100], // Ganti warna lingkaran sesuai kebutuhan
                      ),
                      child: Center(
                        child: _image != null
                            ? CircleAvatar(
                          radius: 50,
                          backgroundImage: FileImage(_image!),
                        )
                            : Image.asset('assets/images/profile.png'), // Ganti dengan gambar yang diinginkan
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: () {
                          print("object");
                          _EditProfilePageState();
                        },
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.blue, // Ganti warna ikon sesuai kebutuhan
                            size: 20, // Ganti ukuran ikon sesuai kebutuhan
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                CustomTextField(
                  controller: txtNama,
                  hintText: "Full Name",
                ),
                SizedBox(height: 20,),
                CustomTextField(
                  controller: txtNicName,
                  hintText: "Nick Name",
                ),
                SizedBox(height: 20,),
                CustomDatePicker(
                  hintText: 'Date Of Birth',
                  controller: txtDate,
                  icon: Icons.date_range,
                ),
                SizedBox(height: 20,),
                CustomTextField(
                  controller: txtEmail,
                  hintText: "Email",
                  icon: Icons.mail_outline,
                ),
                SizedBox(height: 20,),
                CustomTextField(
                  controller: txtPhone,
                  hintText: "Phone Number",
                  icon: Icons.flag_outlined,
                ),
                SizedBox(height: 20,),
                CustomGenderDropdown(
                  hintText: 'Gender',
                  value: txtGender,
                  onChanged: (value) {
                    setState(() {
                      txtGender = value;
                    });
                  },
                ),
                SizedBox(height: 20,),
                CustomTextField(
                  controller: txtStudent,
                  hintText: "Student",
                ),
                SizedBox(height: 20,),
                CustomButton(
                  text: "Update",
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CreatePin()));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
