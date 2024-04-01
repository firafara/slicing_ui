import 'package:flutter/material.dart';

class SearchOnly extends StatefulWidget {
  final String hintText;

  SearchOnly({
    required this.hintText,
  });

  @override
  _SearchOnlyState createState() => _SearchOnlyState();
}

class _SearchOnlyState extends State<SearchOnly> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white10, width: 0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hintText,
          prefixIcon: Icon(Icons.search,color: Colors.white,),
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {

              });
            },
            child: Container(
              width: 30,
              height: 30,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.blue
              ),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
