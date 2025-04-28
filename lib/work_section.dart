import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/work_item.dart';

class WorkSection extends StatelessWidget {
  const WorkSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Work',
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Divider(
          color: grey,
          thickness: 0.5,
        ),
        const WorkItem(),
        Divider(
          color: grey,
          thickness: 0.5,
        ),
        const WorkItem(),
        Divider(
          color: grey,
          thickness: 0.5,
        ),
        const WorkItem(),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Text(
                    'Work experience',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      color: grey,
                    ),
                  ),
                  Text(
                    '4 years 9 months',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      color: white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
