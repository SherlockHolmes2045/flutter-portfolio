import 'package:flutter/material.dart';
import 'dart:math';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'colors.dart';

class GithubButton extends StatelessWidget {
  const GithubButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: grey, width: 0.25)),
          child: Center(
            child: FaIcon(
              FontAwesomeIcons.github,
              color: white,
            ),
          ),
        ),
        Positioned(
            left: 37,
            child: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: Center(
                child: Transform.rotate(
                  angle: -pi / 4,
                  child: FaIcon(
                    FontAwesomeIcons.arrowRightLong,
                    color: black,
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
