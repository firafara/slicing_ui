import 'package:flutter/material.dart';

class CustomDatePicker extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final IconData? icon;

  CustomDatePicker({
    required this.hintText,
    required this.controller,
    this.icon,
  });

  @override
  _CustomDatePickerState createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != widget.controller.text) {
      setState(() {
        widget.controller.text = picked.toString().split(" ")[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white10, width: 0),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          // Menambahkan ikon dengan padding
          if (widget.icon != null)
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(widget.icon, color: Colors.grey),
            ),
          Expanded(
            // Menggunakan Expanded agar teks dapat mengambil sisa ruang
            child: GestureDetector(
              onTap: () => _selectDate(context),
              child: AbsorbPointer(
                child: TextFormField(
                  controller: widget.controller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: widget.hintText,
                    // Menengahkan teks secara horizontal
                    contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
