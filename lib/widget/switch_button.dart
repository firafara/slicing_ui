import 'package:flutter/material.dart';

class CustomSwitchButton extends StatefulWidget {
  final String text;
  final bool initialValue;
  final Function(bool) onChanged;

  const CustomSwitchButton({
    required this.text,
    required this.initialValue,
    required this.onChanged,
  });

  @override
  _CustomSwitchButtonState createState() => _CustomSwitchButtonState();
}

class _CustomSwitchButtonState extends State<CustomSwitchButton> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.text,
          style: TextStyle(
            fontSize: 14.0,
            fontFamily: 'Jost',
            color: Colors.grey[700],
            fontWeight: FontWeight.bold
          ),
        ),
        Switch(
          value: _value,
          onChanged: (value) {
            setState(() {
              _value = value;
            });
            widget.onChanged(value);
          },
          inactiveTrackColor: Colors.grey[200],
          activeTrackColor: Colors.blue,
          activeColor: Colors.white,
        ),
      ],
    );
  }
}
