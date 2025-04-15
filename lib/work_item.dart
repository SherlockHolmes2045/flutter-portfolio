import 'package:flutter/material.dart';

import 'package:portfolio/colors.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '2024 -',
              style: TextStyle(
                fontFamily: 'OpenSans',
                color: isHovered ? black : grey,
              ),
            ),
            Text(
              '1 year',
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 10,
                color: isHovered ? darkGrey : grey,
              ),
            ),
          ],
        ),
        title: ResponsiveBreakpoints.of(context).isDesktop
            ? Center(
                child: Text(
                  'Groupe Open',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: isHovered ? black : white,
                  ),
                ),
              )
            : Center(
                child: Column(
                  children: [
                    Text(
                      'Groupe Open',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: isHovered ? black : white,
                      ),
                    ),
                    Text(
                      'Software Engineer | Java & Angular & Vue',
                      style: TextStyle(
                        color: isHovered ? black : white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
        trailing: ResponsiveBreakpoints.of(context).isDesktop
            ? Text(
                'Software Engineer | Java & Angular & Vue',
                style:
                    TextStyle(color: isHovered ? black : white, fontSize: 16),
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
