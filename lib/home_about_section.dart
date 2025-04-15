import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeAboutSection extends StatefulWidget {
  const HomeAboutSection({super.key});

  @override
  State<HomeAboutSection> createState() => _HomeAboutSectionState();
}

class _HomeAboutSectionState extends State<HomeAboutSection> {
  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).isDesktop) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '... /About me ...',
            style: TextStyle(fontFamily: 'OpenSans', fontSize: 10),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello! I'm Ivan a fullstack developer.",
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 14,
                    color: grey,
                  ),
                ),
                Text(
                  'More than 5 years experience.',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 14,
                    color: grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '... /About me ...',
            style: TextStyle(fontFamily: 'OpenSans', fontSize: 10),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Hello! I'm Ivan a fullstack developer.",
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 14,
              color: grey,
            ),
          ),
          Text(
            'More than 5 years experience.',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 14,
              color: grey,
            ),
          ),
        ],
      );
    }
  }
}
