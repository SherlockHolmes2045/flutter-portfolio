import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:portfolio/colors.dart';

class ArticlesSectionWidget extends StatefulWidget {
  const ArticlesSectionWidget({super.key});

  @override
  State<ArticlesSectionWidget> createState() => _ArticlesSectionWidgetState();
}

class _ArticlesSectionWidgetState extends State<ArticlesSectionWidget> {
  // FlutterCarouselController buttonCarouselController =
  //     FlutterCarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: 5,
          itemBuilder: (context, index, realIndex) {
            return Container(
              width: 400,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      width: 400,
                      height: 180,
                      'https://miro.medium.com/v2/resize:fit:1400/format:webp/0*HFY-Y_wR9JQNmxIY.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 300,
                        height: 180,
                        decoration: BoxDecoration(
                          color: darkGrey.withOpacity(0.95),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 16,
                            right: 8,
                            top: 8,
                            bottom: 8,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'The simple example is \nkafka + golang',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'OpenSans',
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'This article presents a simple way to implement a micro service architecture using Kafka, Golang and Docker.',
                                style: TextStyle(
                                  color: grey,
                                  fontSize: 8,
                                  fontFamily: 'OpenSans',
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 25,
                                      vertical: 7,
                                    ),
                                    decoration: BoxDecoration(
                                      color: white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Text(
                                      'Read more',
                                      style: TextStyle(
                                        color: black,
                                        fontSize: 11,
                                        fontFamily: 'OpenSans',
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: -0.5,
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
          options: CarouselOptions(
            height: 400,
            enlargeCenterPage: true,
            viewportFraction: 0.8,
            enableInfiniteScroll: true,
            enlargeStrategy: CenterPageEnlargeStrategy.scale,
          ),
        ),
        // FlutterCarousel.builder(
        //   options: FlutterCarouselOptions(
        //     controller: buttonCarouselController,
        //     aspectRatio: 2.0,
        //     enlargeCenterPage: false,
        //     height: 200.0,
        //     showIndicator: false,
        //     enableInfiniteScroll: true,
        //   ),
        //   itemCount: (5 / 2).round(),
        //   itemBuilder: (context, index, realIdx) {
        //     final first = index * 2;
        //     final second = first + 1;
        //     return Row(
        //         children: [first, second].map((idx) {
        //       return Container(
        //         width: 400,
        //         height: 180,
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(20),
        //         ),
        //         child: Stack(
        //           children: [
        //             ClipRRect(
        //               borderRadius: BorderRadius.circular(20),
        //               child: Image.network(
        //                 width: 400,
        //                 height: 180,
        //                 'https://miro.medium.com/v2/resize:fit:1400/format:webp/0*HFY-Y_wR9JQNmxIY.png',
        //                 fit: BoxFit.cover,
        //               ),
        //             ),
        //             Row(
        //               mainAxisAlignment: MainAxisAlignment.end,
        //               children: [
        //                 Container(
        //                   width: 300,
        //                   height: 180,
        //                   decoration: BoxDecoration(
        //                       color: darkGrey.withOpacity(0.95),
        //                       borderRadius: BorderRadius.only(
        //                           topRight: Radius.circular(20),
        //                           bottomRight: Radius.circular(20))),
        //                   child: Padding(
        //                     padding: const EdgeInsets.only(
        //                         left: 16, right: 8.0, top: 8.0, bottom: 8.0),
        //                     child: Column(
        //                       mainAxisAlignment: MainAxisAlignment.start,
        //                       crossAxisAlignment: CrossAxisAlignment.start,
        //                       children: [
        //                         Text(
        //                           'The simple example is \nkafka + golang',
        //                           style: TextStyle(
        //                               fontWeight: FontWeight.bold,
        //                               fontFamily: 'OpenSans'),
        //                         ),
        //                         SizedBox(
        //                           height: 5,
        //                         ),
        //                         Text(
        //                           'This article presents a simple way to implement a micro service architecture using Kafka, Golang and Docker.',
        //                           style: TextStyle(
        //                               color: grey,
        //                               fontSize: 8,
        //                               fontFamily: 'OpenSans'),
        //                         ),
        //                         SizedBox(
        //                           height: 20,
        //                         ),
        //                         Row(
        //                           mainAxisSize: MainAxisSize.min,
        //                           children: [
        //                             Container(
        //                               padding: EdgeInsets.symmetric(
        //                                   horizontal: 25, vertical: 7),
        //                               decoration: BoxDecoration(
        //                                   color: white,
        //                                   borderRadius:
        //                                       BorderRadius.circular(20)),
        //                               child: Text(
        //                                 'Read more',
        //                                 style: TextStyle(
        //                                     color: black,
        //                                     fontSize: 11,
        //                                     fontFamily: 'OpenSans',
        //                                     fontWeight: FontWeight.bold,
        //                                     letterSpacing: -0.5,
        //                                     fontStyle: FontStyle.italic),
        //                               ),
        //                             ),
        //                             ElevatedButton(
        //                                 onPressed: () {},
        //                                 style: ElevatedButton.styleFrom(
        //                                   shape: CircleBorder(),
        //                                 ),
        //                                 child: Icon(
        //                                   Icons.arrow_forward,
        //                                   color: black,
        //                                 ))
        //                           ],
        //                         )
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //               ],
        //             )
        //           ],
        //         ),
        //       );
        //     }).toList());
        //   },
        // ),
        Padding(
          padding: const EdgeInsets.only(top: 75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 70,
                width: 70,
                child: ElevatedButton(
                  onPressed: () =>
                      null /*buttonCarouselController.previousPage()*/,
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(
                      side: BorderSide(color: grey, width: 0.75),
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.arrowLeftLong,
                      color: white,
                      size: 18,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 70,
                width: 70,
                child: ElevatedButton(
                  onPressed: () => null /*buttonCarouselController.nextPage()*/,
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(
                      side: BorderSide(color: grey, width: 0.75),
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.arrowRightLong,
                      color: white,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
