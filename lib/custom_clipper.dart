import 'package:flutter/material.dart';

class CustomContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 20.0;
    Path path = Path()
      ..moveTo(size.width/4, 0)
      ..lineTo(size.width - radius, 0)
      ..quadraticBezierTo(size.width, 0, size.width, radius)
      ..lineTo(size.width, size.height / 2 - radius)
      ..quadraticBezierTo(
        size.width,
        size.height / 2,
        size.width - radius,
        size.height / 2,
      )
      ..lineTo(size.width / 1.5, size.height / 2)
      ..arcToPoint(
        Offset(size.width / 1.6, size.height / 1.8),
        radius: Radius.circular(radius),
        clockwise: false,
      )
      ..lineTo(size.width / 1.6, size.height - radius)
      ..quadraticBezierTo(
        size.width / 1.6,
        size.height,
        size.width / 1.6 - radius,
        size.height,
      )
      ..lineTo(radius, size.height)
      ..quadraticBezierTo(0, size.height, 0, size.height - radius)
      ..lineTo(0, size.height / 2 - radius)
      ..quadraticBezierTo(
          0, size.height / 2 - radius, radius, size.height / 2 - radius)
      ..lineTo(size.width / 4, size.height / 2 - radius)
      ..arcToPoint(
        Offset(size.width / 4, size.height / 3),
        radius: Radius.circular(radius),
        clockwise: false,
      )
      ..lineTo(size.width / 4, radius)
      ..quadraticBezierTo(size.width / 4, 0, size.width / 4 - radius, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
