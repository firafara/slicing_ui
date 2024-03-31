import 'package:flutter/material.dart';

class CustomRadioButton extends StatefulWidget {
  final String text;
  final bool value;
  final Function(bool) onChanged;
  final Image image;

  CustomRadioButton({
    required this.text,
    required this.value,
    required this.onChanged,
    required this.image,
  });

  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onChanged(!widget.value);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              child:widget.image,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(widget.text),
                  Radio<bool>(
                    value: true,
                    groupValue: widget.value,
                    onChanged: (bool? value) {
                      widget.onChanged(value ?? false);
                    },
                    activeColor: Colors.teal,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
