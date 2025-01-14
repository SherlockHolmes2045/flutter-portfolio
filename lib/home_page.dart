import 'package:flutter/material.dart';
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
                            style: TextStyle(fontFamily: 'OpenSans'),
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
                      Row(
                        children: [
                          SocialNetworkWidget(
                              icon: Icon(
                                Icons.cabin,
                                size: 12,
                                color: white,
                              ),
                              text: 'Github')
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
