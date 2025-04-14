import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HeadlineWidget extends StatelessWidget {
  const HeadlineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (ResponsiveBreakpoints.of(context).isDesktop) ...[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Software',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 70,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'Projects',
                          style: TextStyle(
                            color: black,
                            fontFamily: 'OpenSans',
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          color: black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My goal is to write maintainable, clean \nand understandable code to process \ndevelopment was enjoyable.',
                  style: TextStyle(fontFamily: 'OpenSans', color: grey),
                ),
                Text(
                  'Developer',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                      ),
                ),
              ],
            ),
          ),
        ] else ...[
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'Software',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 64, right: 32),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'Developer',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'My goal is to write maintainable, clean \nand understandable code to process \ndevelopment was enjoyable.',
                style: TextStyle(
                    fontFamily: 'OpenSans', color: grey, fontSize: 16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 70,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Projects',
                    style: TextStyle(
                      color: black,
                      fontFamily: 'OpenSans',
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    color: black,
                  ),
                ),
              ],
            ),
          )
        ],
      ],
    );
  }
}
