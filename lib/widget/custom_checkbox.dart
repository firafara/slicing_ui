import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final String text;

  CustomCheckbox({required this.value, required this.onChanged, required this.text});

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isChecked = !_isChecked;
          widget.onChanged(_isChecked);
        });
      },
      child: Row(
        children: <Widget>[
          Container(
            width: 20.0,
            height: 20.0,
            decoration: BoxDecoration(
              color: _isChecked ? Colors.green : Colors.transparent,
              borderRadius: BorderRadius.circular(4.0),
              border: _isChecked ?
              Border.all(
                color: Colors.green,
                width: 2.0,
              ) :
              Border.all(
                color: Colors.grey,
                width: 2.0,
              ),
            ),
            child: _isChecked
                ? Icon(
              Icons.check,
              size: 12.0,
              color: Colors.white,
            )
                : null,
          ),
          SizedBox(width: 8.0),
          Text(
            widget.text,
            style: TextStyle(fontSize: 14.0, fontFamily: 'Jost', color: Colors.grey[700] ),
          ),
        ],
      ),
    );
  }
}
