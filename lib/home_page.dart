import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/articles_section_widget.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/github_button.dart';
import 'package:portfolio/language_widget.dart';
import 'package:portfolio/menu_item.dart';
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
                borderRadius: BorderRadius.circular(20)),
            child: Stack(
              children: [
                Positioned(
                    top: 55, // Adjust top margin as needed
                    right: 0, // Adjust right margin as needed
                    child: CustomPaint(
                      painter: ArcPainter(
                          diameter: 130, startAngle: pi / 12, sweepAngle: 10.5),
                    )),
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 32, right: 32, top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ivan\nLemovou',
                            style: TextStyle(fontFamily: 'OpenSans'),
                          ),
                          Row(
                            spacing: 20,
                            children: [
                              MenuItem(text: 'About'),
                              MenuItem(text: 'Projects'),
                              MenuItem(text: 'Articles'),
                              MenuItem(text: 'Contacts'),
                            ],
                          ),
                          LanguageWidget()
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Software',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge
                                  ?.copyWith(
                                      fontSize: 80,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 3)),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 70, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: white,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                    'Projects',
                                    style: TextStyle(
                                        color: black,
                                        fontFamily: 'OpenSans',
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                    ),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: black,
                                    ))
                              ],
                            ),
                          )
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
                          Text('Developer',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge
                                  ?.copyWith(
                                      fontSize: 80,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 3)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 100, right: 100, top: 30, bottom: 25),
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
                                  text: 'Github'),
                              SocialNetworkWidget(
                                  icon: FaIcon(
                                    FontAwesomeIcons.linkedinIn,
                                    color: white,
                                    size: 14,
                                  ),
                                  text: 'Linkedin'),
                            ],
                          ),
                          SocialNetworkWidget(
                              icon: FaIcon(
                                FontAwesomeIcons.telegram,
                                color: white,
                                size: 14,
                              ),
                              text: 'Telegram'),
                          Row(
                            spacing: 10,
                            children: [
                              SocialNetworkWidget(
                                  icon: FaIcon(
                                    FontAwesomeIcons.xTwitter,
                                    color: white,
                                    size: 12,
                                  ),
                                  text: 'Twitter'),
                              SocialNetworkWidget(
                                  icon: FaIcon(
                                    FontAwesomeIcons.stackOverflow,
                                    color: white,
                                    size: 12,
                                  ),
                                  text: 'StackOverflow')
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: ArticlesSectionWidget(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
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
                                  'Hello! I\'m Ivan a fullstack developer.',
                                  style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontSize: 14,
                                      color: grey),
                                ),
                                Text(
                                  'More than 5 years experience.',
                                  style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontSize: 14,
                                      color: grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TechnicalStackSection(),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/user/ivan.jpg',
                                  height: 400,
                                  width: 300,
                                  fit: BoxFit.cover,
                                )),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Work',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge
                                  ?.copyWith(
                                      fontSize: 70,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 3))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      color: grey,
                      thickness: 0.5,
                    ),
                    WorkItem(),
                    Divider(
                      color: grey,
                      thickness: 0.5,
                    ),
                    WorkItem(),
                    Divider(
                      color: grey,
                      thickness: 0.5,
                    ),
                    WorkItem(),
                    SizedBox(
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
                                    fontFamily: 'OpenSans', color: grey),
                              ),
                              Text(
                                '4 years 9 months',
                                style: TextStyle(
                                    fontFamily: 'OpenSans', color: white),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
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
