import 'package:flutter/material.dart';

class CustomButtonPolos extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  CustomButtonPolos(
      {required this.text, this.onPressed, required TextStyle textStyle});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            backgroundColor: Color(0xFFF5F9FF),
            // Menetapkan lebar maksimum sesuai lebar yang tersedia
            minimumSize: Size(constraints.maxWidth, 50),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                        color: Color(0xFF202244),
                        height: 3,
                        fontSize: 18,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
