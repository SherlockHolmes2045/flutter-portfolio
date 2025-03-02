import 'package:flutter/material.dart';

class CustomContainerClipper extends CustomClipper<Path> {
  const CustomContainerClipper(this.shape);

  final int shape;

  @override
  Path getClip(Size size) {
    const radius = 20.0;
    if (shape == 1) {
      return projectOne(size, radius);
    }
    return projectTwo(size, radius);
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;

  Path projectOne(Size size, double radius) {
    final path = Path()
      // Top segment - starting with rounded top-left corner
      ..moveTo(radius, 0)
      ..lineTo(size.width - radius, 0)
      ..quadraticBezierTo(size.width, 0, size.width, radius)
      ..lineTo(size.width, size.height / 2.2 - radius)
      ..quadraticBezierTo(
        size.width,
        size.height / 2.2,
        size.width - radius,
        size.height / 2.2,
      )
      ..lineTo(size.width / 1.5, size.height / 2.2)
      ..arcToPoint(
        Offset(size.width / 1.55, size.height / 1.9),
        radius: Radius.circular(radius),
        clockwise: false,
      )
      ..lineTo(size.width / 1.55, size.height - radius)
      ..quadraticBezierTo(
        size.width / 1.55,
        size.height,
        size.width / 1.55 - radius,
        size.height,
      )
      ..lineTo(radius, size.height)
      ..quadraticBezierTo(0, size.height, 0, size.height - radius)
      ..lineTo(0, radius)
      ..quadraticBezierTo(
        0,
        0,
        radius,
        0,
      )
      ..close();
    return path;
  }

  Path projectTwo(Size size, double radius) {
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
        radius: Radius.circular(radius),
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
      ..lineTo(0, size.height / 2.3 + radius)
      // Fix for the middle left corner
      ..quadraticBezierTo(
        0,
        size.height / 2.3,
        radius,
        size.height / 2.3,
      )
      ..lineTo(size.width / 3.5 - radius, size.height / 2.3)
      ..arcToPoint(
        Offset(size.width / 3.5, size.height / 2.6),
        radius: Radius.circular(radius),
        clockwise: false,
      )
      ..lineTo(size.width / 3.5, radius)
      // Fix for the top left corner
      ..quadraticBezierTo(
        size.width / 3.5,
        0,
        size.width / 3.5 + radius,
        0,
      )
      ..close();
    return path;
  }
}
