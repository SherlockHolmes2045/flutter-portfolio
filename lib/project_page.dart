import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/custom_clipper.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Stack(
        children: [
          Center(
            child: ClipPath(
              clipper: CustomContainerClipper(),
              child: Container(
                width: 550,
                height: 350,
                color: Colors.grey[900],
              ),
            ),
          )
        ],
      ),
    );
  }
}
