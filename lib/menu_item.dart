import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';

class MenuItem extends StatefulWidget {
  const MenuItem({super.key, required this.text});

  final String text;

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              foregroundColor: isHovered ? white : white.withOpacity(0.7),
              overlayColor: Colors.transparent),
          child: Text(
            widget.text,
            style: TextStyle(fontFamily: 'OpenSans'),
          )),
    );
  }
}
