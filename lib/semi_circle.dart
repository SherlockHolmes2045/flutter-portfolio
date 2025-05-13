import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';

class ArcPainter extends CustomPainter {
  // Sweep angle of the arc in radians

  ArcPainter({
    required this.diameter,
    required this.startAngle,
    required this.sweepAngle,
  });
  final double diameter; // Diameter of the circle for the arc
  final double startAngle; // Start angle of the arc in radians
  final double sweepAngle;

  @override
  void paint(Canvas canvas, Size size) {
    // Define the paint style
    final paint = Paint()
      ..color = grey // Set the color of the arc
      ..style = PaintingStyle.stroke // Only draw the arc's outline
      ..strokeWidth = 0.25; // Adjust the thickness of the arc

    // Define the bounding rectangle for the arc
    final rect = Rect.fromLTWH(
      0,
      // Left (move left by the diameter to create the arc)
      0,
      // Top (negative value moves it slightly outside the visible area)
      diameter, // Right (top-right corner of the screen)
      diameter, // Bottom
    );

    canvas.drawArc(rect, startAngle, sweepAngle, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false; // No repaint needed for a static arc
  }
}
