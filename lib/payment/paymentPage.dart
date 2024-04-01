import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slicing_ui/home_page.dart';

import '../../model/model_course.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_dialog.dart';
import '../../widget/custom_radiobutton.dart';
import '/profile/addNewCardPage.dart';
import 'e-ReceiptPage.dart';

class PaymentPage extends StatefulWidget {
  final Course course;

  const PaymentPage({Key? key, required this.course}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  late Course course;

  @override
  void initState() {
    super.initState();
    course = widget.course;
  }

  void _showCongratulationsDialog() {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          title: Text(""),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/ic_congratulation.png',
                height: 200,
                width: 200,
              ),
              Text(
                "Congratulations",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Jost',
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Your Payment is Successfully. Purchase a New Course",
                style: TextStyle(fontFamily: 'Mulish'),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EReceiptPage(course: course)),
                  );
                },
                child: Text("E-Receipt"),
              )
            ],
          ),
        );
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment Methods',
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
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: BoxConstraints(
                    minWidth: 50,
                    maxWidth: double.infinity,
                    minHeight: 50,
                    maxHeight: double.infinity,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          child: Image.network(
                            course.urlImage,
                            fit: BoxFit.cover,
                            height: 80,
                            width: 80,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${course.txtCategori}",
                            style: TextStyle(
                              fontFamily: 'Jost',
                              color: Colors.orange,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "${course.txtTitle}",
                            style: TextStyle(
                              fontFamily: 'Jost',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Select The Payment Methods You Want to Use',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 10),
                CustomRadioButton(
                  text: 'Paypal',
                  value: false,
                  onChanged: (bool newValue) {
                    print(newValue);
                  },
                  image: Image.network(
                    "https://cdn.icon-icons.com/icons2/2699/PNG/512/paypal_logo_icon_170865.png",
                    fit: BoxFit.fitWidth,
                    width: 60,
                    height: 20,
                  ),
                ),
                SizedBox(height: 10),
                CustomRadioButton(
                  text: 'Google Pay',
                  value: false,
                  onChanged: (bool newValue) {
                    print(newValue);
                  },
                  image: Image.network(
                    "https://cdn1.iconfinder.com/data/icons/logos-brands-in-colors/436/Google_Pay_GPay_Logo-512.png",
                    fit: BoxFit.fitWidth,
                    width: 60,
                    height: 20,
                  ),
                ),
                SizedBox(height: 10),
                CustomRadioButton(
                  text: 'Apple Pay',
                  value: false,
                  onChanged: (bool newValue) {
                    print(newValue);
                  },
                  image: Image.network(
                    "https://cdn.icon-icons.com/icons2/2648/PNG/512/finance_apple_pay_icon_160746.png",
                    fit: BoxFit.fitWidth,
                    width: 60,
                    height: 20,
                  ),
                ),
                SizedBox(height: 10),
                CustomRadioButton(
                  text: '**** **** **21 2392',
                  value: true,
                  onChanged: (bool newValue) {
                    print(newValue);
                  },
                  image: Image.network(
                    "https://cdn.icon-icons.com/icons2/674/PNG/512/Visa_icon-icons.com_60549.png",
                    fit: BoxFit.fitWidth,
                    width: 60,
                    height: 20,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddNewCardPage()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                CustomButton(
                  onPressed: () {
                    _showCongratulationsDialog();
                  },
                  text: "Make Payment - \u0024${course.txtPrice}",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
