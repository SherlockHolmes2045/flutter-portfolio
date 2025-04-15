import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/articles_section_widget.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/header_widget.dart';
import 'package:portfolio/headline_social_widget.dart';
import 'package:portfolio/home_about_section.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/headline_widget.dart';
import 'package:portfolio/semi_circle.dart';
import 'package:portfolio/social_network_widget.dart';
import 'package:portfolio/technical_stack_section.dart';
import 'package:portfolio/work_item.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      backgroundColor: black,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 1000,
            decoration: BoxDecoration(
              border: Border.all(
                color: ResponsiveBreakpoints.of(context).isDesktop
                    ? white
                    : Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 55, // Adjust top margin as needed
                  right: 0, // Adjust right margin as needed
                  child: CustomPaint(
                    painter: ArcPainter(
                      diameter: 130,
                      startAngle: pi / 12,
                      sweepAngle: 10.5,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 32, right: 32, top: 12),
                      child: HeaderWidget(),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    const HeadlineWidget(),
                    Padding(
                      padding: EdgeInsets.only(
                        left: ResponsiveBreakpoints.of(context).isDesktop
                            ? 100
                            : 32,
                        right: ResponsiveBreakpoints.of(context).isDesktop
                            ? 100
                            : 150,
                        top: 30,
                        bottom: 25,
                      ),
                      child: const HeadlineSocialWidget(),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child: ArticlesSectionWidget(),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child: HomeAboutSection(),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    if (ResponsiveBreakpoints.of(context).isDesktop) ...[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TechnicalStackSection(),
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/user/ivan.jpg',
                                  height: 400,
                                  width: 300,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ] else ...[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/user/ivan.jpg',
                            height: 400,
                            width: 300,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32),
                        child: TechnicalStackSection(),
                      ),
                    ],
                    const SizedBox(
                      height: 60,
                    ),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
