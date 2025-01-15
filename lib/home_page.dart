import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/colors.dart';
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
          child: Container(
            width: 800,
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
                  child: ListView(
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
                            'My goal is to write maintanable, clean \nand understandable code to process \ndevelopment was enjoyable.',
                            style:
                                TextStyle(fontFamily: 'OpenSans', color: grey),
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
                            left: 100, right: 100, top: 20, bottom: 40),
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
                      Stack(
                        children: [
                          FlutterCarousel(
                            options: FlutterCarouselOptions(
                              height: 200.0,
                              showIndicator: true,
                              slideIndicator: CircularSlideIndicator(),
                            ),
                            items: [1, 2, 3, 4, 5].map((i) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                    width: 300,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.network(
                                            width: 300,
                                            height: 150,
                                            'https://miro.medium.com/v2/resize:fit:1400/format:webp/0*HFY-Y_wR9JQNmxIY.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              width: 200,
                                              height: 150,
                                              decoration: BoxDecoration(
                                                  color: darkGrey
                                                      .withOpacity(0.95),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  20),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  20))),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 16,
                                                    right: 8.0,
                                                    top: 8.0,
                                                    bottom: 8.0),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'The simple example is \nkafka + golang',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontFamily:
                                                              'OpenSans'),
                                                    ),
                                                    Text(
                                                      'This article presents a simple way to implement a micro service architecture using Kafka, Golang and Docker.',
                                                      style: TextStyle(
                                                          color: grey,
                                                          fontSize: 8,
                                                          fontFamily:
                                                              'OpenSans'),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                },
                              );
                            }).toList(),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
