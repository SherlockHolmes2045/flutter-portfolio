import 'package:flutter/material.dart';

import 'colors.dart';

class WorkItem extends StatefulWidget {
  const WorkItem({super.key});

  @override
  State<WorkItem> createState() => _WorkItemState();
}

class _WorkItemState extends State<WorkItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 32),
        onTap: () {},
        focusColor: white,
        hoverColor: white,
        leading: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '2024 -',
              style: TextStyle(
                  fontFamily: 'OpenSans', color: isHovered ? black : grey),
            ),
            Text(
              '1 year',
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 10,
                  color: isHovered ? darkGrey : grey),
            )
          ],
        ),
        title: Center(
          child: Text(
            'Groupe Open',
            style: TextStyle(
                fontFamily: 'OpenSans', color: isHovered ? black : white),
          ),
        ),
        trailing: Text(
          'Software Engineer | Java & Angular & Vue',
          style: TextStyle(color: isHovered ? black : white, fontSize: 16),
        ),
      ),
    );
  }
}
