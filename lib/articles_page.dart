import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/article_item.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/contact_section.dart';
import 'package:portfolio/contact_social_network_section.dart';
import 'package:portfolio/contact_title_section.dart';
import 'package:portfolio/header_widget.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/navbar_drawer.dart';
import 'package:portfolio/semi_circle.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ArticlesPage extends StatefulWidget {
  const ArticlesPage({super.key});

  @override
  State<ArticlesPage> createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      backgroundColor: black,
      endDrawer: const NavbarDrawer(),
      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height,
                right: 0,
                left: MediaQuery.of(context).size.width ,
                child: CustomPaint(
                  painter: ArcPainter(
                    diameter: 300,
                    startAngle: pi / 2,
                    sweepAngle: pi,
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
                    height: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Articles',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(
                                fontSize:
                                    ResponsiveBreakpoints.of(context).isMobile
                                        ? 40
                                        : 70,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 3,
                              ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: grey,
                    thickness: 0.5,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ...List.generate(
                    3,
                    (index) => const Padding(
                      padding: EdgeInsets.only(left: 32, right: 32, bottom: 15),
                      child: ArticleItem(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      spacing: 10,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: white,
                          ),
                          child: Text(
                            '1',
                            style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 10,
                              color: black,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: grey),
                          ),
                          child: const Text(
                            '2',
                            style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: grey),
                          ),
                          child: FaIcon(
                            FontAwesomeIcons.arrowRightLong,
                            color: grey,
                            size: 8,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: ContactSection(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: ContactTitleSection(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: ContactSocialNetworkSection(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
