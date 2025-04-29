import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/l10n/menu_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '... /Contacts ...',
          style: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        if (!ResponsiveBreakpoints.of(context).isMobile) ...[
          const MenuWidget(),
        ],
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: grey, width: 0.5),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.only(
            left: 10,
            top: 20,
            bottom: 20,
            right: 200,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Site',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 16,
                  color: grey,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Handcrafted by ME /',
                style: TextStyle(fontSize: 12),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Designed by Taisia /',
                style: TextStyle(fontSize: 12),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Powered by Flutter',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
