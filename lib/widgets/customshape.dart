import 'package:flutter/material.dart';

class CustomShape extends CustomPainter {
  final Color bgColor;

  CustomShape(this.bgColor);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = bgColor;

    var path = Path();
    path.quadraticBezierTo(
      9,
      8,
      16,
      10,
    );
    path.quadraticBezierTo(
      29,
      13,
      16,
      16,
    );
    path.quadraticBezierTo(
      0,
      19,
      0,
      15,
    );
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}