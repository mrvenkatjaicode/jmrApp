import 'package:flutter/material.dart';

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    const double gap = 5;
    double startX = 0;

    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + gap, 0),
        paint,
      );
      startX += gap * 2;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
