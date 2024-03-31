import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slicing_ui/widget/custom_button.dart';
import 'package:slicing_ui/widget/custom_text_field.dart';
import 'package:slicing_ui/widget/password_text_field.dart';
import 'package:slicing_ui/widget/pin_input.dart';

class AddNewCardPage extends StatefulWidget {
  @override
  State<AddNewCardPage> createState() => _AddNewCardPageState();
}

class _AddNewCardPageState extends State<AddNewCardPage> {
  TextEditingController txtCardNumber = TextEditingController();
  TextEditingController txtCardExp = TextEditingController();
  TextEditingController txtCardName = TextEditingController();
  TextEditingController txtCardCvv = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Add New Card',
            style: TextStyle(
              fontFamily: 'Jost',
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: Colors.grey[100],
        ),
        body: Container(
          color: Colors.grey[100],
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Container(
                  margin: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset("assets/images/card.png"),
                          Positioned(
                              bottom: 18,
                              left: 18,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "1234 5678 8765 0876",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "VALID\nTHRU",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 6,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "12/28",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Wahyu Khairat",
                                    style:
                                    TextStyle(color: Colors.white, fontSize: 12),
                                  ),
                                ],
                              )
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Card Name*",
                        style: TextStyle(
                            fontFamily: 'Jost',
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      CustomTextField(hintText: "Name", controller: txtCardName),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Card Number*",
                        style: TextStyle(
                            fontFamily: 'Jost',
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      CustomTextField(
                          hintText: "Card Number", controller: txtCardNumber),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Tanggal Kadaluarsa*",
                                  style: TextStyle(
                                      fontFamily: 'Jost',
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.white10, width: 0),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: TextFormField(
                                    controller: txtCardExp,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "mm/yy",
                                      contentPadding:
                                      EdgeInsets.symmetric(horizontal: 12),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 16), // Memberikan jarak antara kedua kolom
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "CVV*",
                                  style: TextStyle(
                                      fontFamily: 'Jost',
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border:
                                    Border.all(color: Colors.white10, width: 0),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: TextField(
                                    controller: txtCardCvv,
                                    obscureText: true,
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(fontSize: 14),
                                    enableInteractiveSelection:
                                    false, // Tambahkan baris ini
                                    decoration: InputDecoration(
                                      hintText: "Cvv Code",
                                      border: InputBorder.none,
                                      contentPadding:
                                      EdgeInsets.symmetric(horizontal: 12),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  child: CustomButton(
                    text: "Add New Card",
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                )
              ]
          ),
        )
    );
  }
}
