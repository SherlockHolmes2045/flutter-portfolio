import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/articles_section_widget.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/header_widget.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/l10n/menu_widget.dart';
import 'package:portfolio/semi_circle.dart';
import 'package:portfolio/social_network_widget.dart';
import 'package:portfolio/technical_stack_section.dart';
import 'package:portfolio/work_item.dart';

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
                color: white,
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
                  children: [
                    const Padding(
                        padding: EdgeInsets.only(left: 32, right: 32, top: 12),
                        child: HeaderWidget(),),
                    const SizedBox(
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Software',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(
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
                            style:
                                TextStyle(fontFamily: 'OpenSans', color: grey),
                          ),
                          Text(
                            'Developer',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 3,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 100,
                        right: 100,
                        top: 30,
                        bottom: 25,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: 10,
                            children: [
                              SocialNetworkWidget(
                                icon: FaIcon(
                                  FontAwesomeIcons.github,
                                  color: white,
                                  size: 14,
                                ),
                                text: 'Github',
                              ),
                              SocialNetworkWidget(
                                icon: FaIcon(
                                  FontAwesomeIcons.linkedinIn,
                                  color: white,
                                  size: 14,
                                ),
                                text: 'Linkedin',
                              ),
                            ],
                          ),
                          SocialNetworkWidget(
                            icon: FaIcon(
                              FontAwesomeIcons.telegram,
                              color: white,
                              size: 14,
                            ),
                            text: 'Telegram',
                          ),
                          Row(
                            spacing: 10,
                            children: [
                              SocialNetworkWidget(
                                icon: FaIcon(
                                  FontAwesomeIcons.xTwitter,
                                  color: white,
                                  size: 12,
                                ),
                                text: 'Twitter',
                              ),
                              SocialNetworkWidget(
                                icon: FaIcon(
                                  FontAwesomeIcons.stackOverflow,
                                  color: white,
                                  size: 12,
                                ),
                                text: 'StackOverflow',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child: ArticlesSectionWidget(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '... /About me ...',
                            style:
                                TextStyle(fontFamily: 'OpenSans', fontSize: 10),
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
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
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
