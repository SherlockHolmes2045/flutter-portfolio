import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ContactTitleSection extends StatelessWidget {
  const ContactTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ivan',
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontSize: ResponsiveBreakpoints.of(context).isMobile ? 40 : 70,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
              ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const Text(
              'Software\ndeveloper',
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 14,
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            Text(
              'Lemovou',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontSize:
                        ResponsiveBreakpoints.of(context).isMobile ? 40 : 70,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
