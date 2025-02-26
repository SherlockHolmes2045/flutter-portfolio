import 'package:flutter/material.dart';

class CustomContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    const radius = 20.0;
    final path = Path()
      // Top segment - starting with rounded top-left corner
      ..moveTo(size.width / 4 + radius, 0)
      ..lineTo(size.width - radius, 0)
      ..quadraticBezierTo(size.width, 0, size.width, radius)
      ..lineTo(size.width, size.height / 2.5 - radius)
      ..quadraticBezierTo(
        size.width,
        size.height / 2.5,
        size.width - radius,
        size.height / 2.5,
      )
      ..lineTo(size.width / 1.3, size.height / 2.5)
      ..arcToPoint(
        Offset(size.width / 1.35, size.height / 2.15),
        radius: const Radius.circular(radius),
        clockwise: false,
      )
      ..lineTo(size.width / 1.35, size.height / 1.2 - radius)
      ..quadraticBezierTo(
        size.width / 1.35,
        size.height / 1.2,
        size.width / 1.35 - radius,
        size.height / 1.2,
      )
      ..lineTo(radius, size.height / 1.2)
      ..quadraticBezierTo(0, size.height / 1.2, 0, size.height / 1.2 - radius)
      ..lineTo(0, size.height / 3 + radius)
      // Fix for the middle left corner
      ..quadraticBezierTo(
        0,
        size.height / 3,
        radius,
        size.height / 3,
      )
      ..lineTo(size.width / 4 - radius, size.height / 3)
      ..arcToPoint(
        Offset(size.width / 4, size.height / 3.9),
        radius: const Radius.circular(radius),
        clockwise: false,
      )
      ..lineTo(size.width / 4, radius)
      // Fix for the top left corner
      ..quadraticBezierTo(
        size.width / 4,
        0,
        size.width / 4 + radius,
        0,
      )
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
