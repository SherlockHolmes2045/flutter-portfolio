import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';

class ArcPainter extends CustomPainter {
  final double diameter; // Diameter of the circle for the arc
  final double startAngle; // Start angle of the arc in radians
  final double sweepAngle; // Sweep angle of the arc in radians

  ArcPainter({
    required this.diameter,
    required this.startAngle,
    required this.sweepAngle,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // Define the paint style
    final paint = Paint()
      ..color = grey // Set the color of the arc
      ..style = PaintingStyle.stroke // Only draw the arc's outline
      ..strokeWidth = 0.25; // Adjust the thickness of the arc

    // Define the bounding rectangle for the arc
    final rect = Rect.fromLTRB(
      size.width - diameter,
      // Left (move left by the diameter to create the arc)
      -diameter / 2,
      // Top (negative value moves it slightly outside the visible area)
      size.width, // Right (top-right corner of the screen)
      diameter / 2, // Bottom
    );

    // Draw the arc
    final path = Path()
      ..arcTo(rect, startAngle, sweepAngle,
          false); // Use the start and sweep angles

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false; // No repaint needed for a static arc
  }
}
