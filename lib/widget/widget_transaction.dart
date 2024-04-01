import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetTransaction extends StatelessWidget {
  final String urlImage;
  final String txtCategori;
  final String txtTitle;
  final String txtStatus;
  WidgetTransaction({
    required this.urlImage,
    required this.txtCategori,
    required this.txtTitle,
    required this.txtStatus
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 10,),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                child: Image.network(
                  urlImage,
                  fit: BoxFit.cover,
                  height: 80,
                  width: 80,
                ),
              ),
              SizedBox(width: 10,),
              Expanded( // Tambahkan Expanded di sekitar teks judul
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      txtTitle,
                      style: TextStyle(
                        fontFamily: 'Jost',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      txtCategori,
                      style: TextStyle(
                          fontFamily: 'Jost',
                          fontSize: 12
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: 100,
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(00),
                        color: Colors.green[700],
                      ),
                      child: Text(
                        txtStatus,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Jost',
                            fontSize: 10
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
          Divider(),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
