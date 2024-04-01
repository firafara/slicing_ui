import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui/widget/custom_button.dart';
import 'package:slicing_ui/widget/widget_search.dart';

class Certifikat extends StatefulWidget {
  const Certifikat({Key? key}) : super(key: key);
  @override
  State<Certifikat> createState() => _CertifikatState();
}

class _CertifikatState extends State<Certifikat>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F9FF),
        title: Text(
          '3D Design Illustration',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: Color(0xFFF5F9FF),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16), // Add horizontal padding
            child: SearchOnly(hintText: "3D Design Illustration"),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Scrollbar(
                      child: Image.asset(
                        'assets/images/certificate.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
          // CustomButton is placed outside of SingleChildScrollView
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomButton(
              text: "Download Certificate",
              onPressed: () {
                // Add onPressed action for the custom button if needed
              },
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
