import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/articles_section_widget.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/github_button.dart';
import 'package:portfolio/semi_circle.dart';
import 'package:portfolio/social_network_widget.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Center(
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
                            diameter: 110, startAngle: 120, sweepAngle: 10),
                      )),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Ivan\nLemovou',
                              style: TextStyle(fontFamily: 'OpenSans'),
                            ),
                            Row(
                              spacing: 20,
                              children: [
                                Text(
                                  'About',
                                  style: TextStyle(fontFamily: 'OpenSans'),
                                ),
                                Text(
                                  'Projects',
                                  style: TextStyle(fontFamily: 'OpenSans'),
                                ),
                                Text(
                                  'Articles',
                                  style: TextStyle(fontFamily: 'OpenSans'),
                                ),
                                Text(
                                  'Contacts',
                                  style: TextStyle(fontFamily: 'OpenSans'),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'En',
                                  style: TextStyle(fontFamily: 'OpenSans'),
                                ),
                                Text(
                                  'Fr',
                                  style: TextStyle(fontFamily: 'OpenSans'),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Full-stack',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge
                                    ?.copyWith(
                                        fontSize: 70,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 3)),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 60, vertical: 5),
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
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'My goal is to write maintainable, clean \nand understandable code to process \ndevelopment was enjoyable.',
                              style: TextStyle(
                                  fontFamily: 'OpenSans', color: grey),
                            ),
                            Text('Developer',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge
                                    ?.copyWith(
                                        fontSize: 70,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 3)),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 100, right: 100, top: 20, bottom: 20),
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
                                        size: 12,
                                      ),
                                      text: 'Github'),
                                  SocialNetworkWidget(
                                      icon: FaIcon(
                                        FontAwesomeIcons.linkedinIn,
                                        color: white,
                                        size: 12,
                                      ),
                                      text: 'Linkedin'),
                                ],
                              ),
                              SocialNetworkWidget(
                                  icon: FaIcon(
                                    FontAwesomeIcons.telegram,
                                    color: white,
                                    size: 12,
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
                        ArticlesSectionWidget(),
                        SizedBox(
                          height: 100,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '... /About me ...',
                              style: TextStyle(
                                  fontFamily: 'OpenSans', fontSize: 10),
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
                        SizedBox(
                          height: 70,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 500,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 16),
                                    width: 500,
                                    decoration: BoxDecoration(
                                        color: white,
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Backend',
                                          style: TextStyle(
                                              fontFamily: 'OpenSans',
                                              fontSize: 16,
                                              color: darkGrey),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Java / Spring boot / php / Laravel / Nodejs / Express / NestJS / Golang / PostgresSQL / Mysql / MongoDB / Redis / Kafka / RabbitMQ / Microservice',
                                          style: TextStyle(
                                              fontFamily: 'OpenSans',
                                              fontSize: 12,
                                              color: black),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 16),
                                        width: 250,
                                        decoration: BoxDecoration(
                                            color: black,
                                            border: Border.all(
                                                color: grey, width: 0.25),
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Front-end',
                                              style: TextStyle(
                                                  fontFamily: 'OpenSans',
                                                  fontSize: 16,
                                                  color: grey),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Typescript / Angular / RxJs / Vue / Vuex / Jest / Pupeteer',
                                              style: TextStyle(
                                                  fontFamily: 'OpenSans',
                                                  fontSize: 12,
                                                  color:
                                                      white.withOpacity(0.8)),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 12, top: 0),
                                        child: SizedBox(
                                            width: 150, child: GithubButton()),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 16),
                                    width: 500,
                                    decoration: BoxDecoration(
                                        color: black,
                                        border: Border.all(
                                            color: grey, width: 0.25),
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Mobile',
                                          style: TextStyle(
                                              fontFamily: 'OpenSans',
                                              fontSize: 16,
                                              color: grey),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Flutter / Dart / Gradle / Firebase / Android / ios / Xcode / Swift / Codemagic / Shorebird',
                                          style: TextStyle(
                                              fontFamily: 'OpenSans',
                                              fontSize: 12,
                                              color: white.withOpacity(0.8)),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                          'Some of my favorite technologies,\ntopics or tools,I\'ve worked with',
                                          style: TextStyle(
                                              fontFamily: 'OpenSans',
                                              color: grey,
                                              fontSize: 13,
                                              fontStyle: FontStyle.italic)),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 16),
                                        width: 250,
                                        decoration: BoxDecoration(
                                            color: black,
                                            border: Border.all(
                                                color: grey, width: 0.25),
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'DevOps',
                                              style: TextStyle(
                                                  fontFamily: 'OpenSans',
                                                  fontSize: 16,
                                                  color: grey),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Nginx / Apache / Docker / (CI/CD) / k8s / Jenkins / Bash',
                                              style: TextStyle(
                                                  fontFamily: 'OpenSans',
                                                  fontSize: 12,
                                                  color:
                                                      white.withOpacity(0.8)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
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
                        SizedBox(
                          height: 60,
                        ),
                        Row(
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
                        SizedBox(
                          height: 20,
                        ),
                        Divider(
                          color: grey,
                          thickness: 0.5,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
