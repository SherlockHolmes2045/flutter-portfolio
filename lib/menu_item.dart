import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';

class MenuItem extends StatefulWidget {
  const MenuItem({required this.text, required this.route, super.key});

  final String text;
  final String route;

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
        onPressed: () => Navigator.of(context).pushNamed(widget.route),
        style: TextButton.styleFrom(
          foregroundColor:
              isHovered || ModalRoute.of(context)?.settings.name == widget.route
                  ? white
                  : white.withOpacity(0.7),
          overlayColor: Colors.transparent,
        ),
        child: Text(
          widget.text,
          style: const TextStyle(fontFamily: 'OpenSans'),
        ),
      ),
    );
  }
}
