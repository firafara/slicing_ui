import 'package:flutter/material.dart';

class CustomGenderDropdown extends StatefulWidget {
  final String hintText;
  final String? value;
  final ValueChanged<String?> onChanged;

  CustomGenderDropdown({
    required this.hintText,
    required this.value,
    required this.onChanged,
  });

  @override
  _CustomGenderDropdownState createState() => _CustomGenderDropdownState();
}

class _CustomGenderDropdownState extends State<CustomGenderDropdown> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      title: Text('Laki-laki'),
                      onTap: () {
                        Navigator.pop(context, 'Laki-laki');
                      },
                    ),
                    ListTile(
                      title: Text('Perempuan'),
                      onTap: () {
                        Navigator.pop(context, 'Perempuan');
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ).then((value) {
          if (value != null) {
            widget.onChanged(value);
          }
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.white
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                widget.value ?? widget.hintText,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}
