import 'package:flutter/material.dart';

class CustomClipperShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double borderRadius = 30.0; // Adjust the border radius as needed
    Path path = Path();

    // Top-left corner
    path.moveTo(0, borderRadius);
    path.quadraticBezierTo(0, 0, borderRadius, 0);

    // Top-right corner
    path.lineTo(size.width - borderRadius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, borderRadius);

    // Bottom-right corner
    path.lineTo(size.width, (size.height * 0.5) - borderRadius);
    path.quadraticBezierTo(
        size.width, size.height, size.width - borderRadius, (size.height * 0.5));
    path.lineTo(size.width *0.4, (size.height *0.5));
    path.arcToPoint(
      Offset(size.width * 0.6, size.height),
      radius: Radius.circular(70),
      clockwise: true,
    );
    // // Bottom-left corner
    // path.lineTo(borderRadius, size.height);
    // path.quadraticBezierTo(0, size.height, 0, size.height - borderRadius);

    path.close(); // Close the path
    return path;
    // Path path = Path();
    //
    // // Start at top-left corner
    // path.moveTo(0, 0);
    //
    // // Top straight line
    // path.lineTo(size.width, 0);
    //
    // path.quadraticBezierTo(size.width, 0, size.width, 50);
    //
    // // Right straight line
    // path.lineTo(size.width * 0.8, size.height * 0.8);
    //
    // // Bottom-right rounded cutout
    // path.arcToPoint(
    //   Offset(size.width * 0.6, size.height),
    //   radius: Radius.circular(70),
    //   clockwise: true,
    // );
    //
    // // Bottom straight line
    // path.lineTo(size.width * 0.4, size.height);
    //
    // // Bottom-left rounded cutout
    // path.arcToPoint(
    //   Offset(0, size.height * 0.6),
    //   radius: Radius.circular(80),
    //   clockwise: false,
    // );
    //
    // // Left straight line
    // path.lineTo(0, size.height * 0.4);
    //
    // // Top-left rounded cutout
    // path.arcToPoint(
    //   Offset(size.width * 0.2, size.height * 0.2),
    //   radius: Radius.circular(50),
    //   clockwise: true,
    // );

    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false; // Reclip only if needed
  }
}
