import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/header_widget.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/l10n/menu_widget.dart';
import 'package:portfolio/navbar_drawer.dart';
import 'package:portfolio/project_description.dart';
import 'package:portfolio/project_image.dart';
import 'package:portfolio/social_network_widget.dart';
import 'package:portfolio/work_section.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      backgroundColor: black,
      endDrawer: const NavbarDrawer(),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 1100,
            decoration: BoxDecoration(
              border: Border.all(
                color: white,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 32, right: 32, top: 12),
                  child: HeaderWidget(),
                ),
                const SizedBox(
                  height: 100,
                ),
                if (ResponsiveBreakpoints.of(context).isMobile ||
                    ResponsiveBreakpoints.of(context).isTablet) ...[
                  const WorkSection(),
                ],
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    '... /${l10n.project} ...',
                    style:
                        const TextStyle(fontFamily: 'OpenSans', fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32, right: 32, top: 12),
                  child: ResponsiveBreakpoints.of(context).isDesktop
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const ProjectDescription(),
                            const ProjectImage(
                              shape: 1,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 150,
                              height: 300,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ],
                        )
                      : const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ProjectImage(
                              shape: 1,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            ProjectDescription(),
                          ],
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32, right: 32, top: 100),
                  child: ResponsiveBreakpoints.of(context).isDesktop
                      ? const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ProjectImage(
                              shape: 2,
                            ),
                            ProjectDescription(),
                          ],
                        )
                      : const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ProjectImage(
                              shape: 2,
                            ),
                            ProjectDescription(),
                          ],
                        ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 32,
                    right: 32,
                    top: 100,
                    bottom:
                        ResponsiveBreakpoints.of(context).isDesktop ? 0 : 50,
                  ),
                  child: ResponsiveBreakpoints.of(context).isDesktop
                      ? const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ProjectDescription(),
                            ProjectImage(shape: 3),
                          ],
                        )
                      : const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ProjectImage(shape: 3),
                            ProjectDescription(),
                          ],
                        ),
                ),
                if (ResponsiveBreakpoints.of(context).isDesktop) ...[
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 100, left: 32, right: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Articles',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(
                                  fontSize: ResponsiveBreakpoints.of(context)
                                          .isDesktop
                                      ? 70
                                      : 40,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 3,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: grey,
                    thickness: 0.5,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 32, right: 32),
                    child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
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
                                  FontAwesomeIcons.arrowDownLong,
                                  color: grey,
                                  size: 8,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 200,
                          ),
                          Expanded(
                            child: GridView.count(
                              physics: const NeverScrollableScrollPhysics(),
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: 6 / 3,
                              shrinkWrap: true,
                              children: List.generate(
                                4,
                                (i) => Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 40,
                                    vertical: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: grey, width: 0.5),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'The simple example is \n kafka + golang',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'OpenSans',
                                          fontSize: 15,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'This article presents a simple way to implement a micro service architecture using Kafka, Golang and Docker.',
                                        style: TextStyle(
                                          color: grey,
                                          fontSize: 12,
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
                                              horizontal: 40,
                                              vertical: 7,
                                            ),
                                            decoration: BoxDecoration(
                                              color: white,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Text(
                                              'Read more',
                                              style: TextStyle(
                                                color: black,
                                                fontSize: 12,
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
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 32, right: 32, top: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ivan',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge
                                  ?.copyWith(
                                    fontSize: 70,
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
                          ],
                        ),
                        Column(
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
                            const MenuWidget(),
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
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 50,
                      left: 32,
                      right: 32,
                      bottom: 32,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        SocialNetworkWidget(
                          icon: Icon(
                            Icons.email,
                            color: white,
                            size: 14,
                          ),
                          text: 'E-mail',
                        ),
                        SocialNetworkWidget(
                          icon: FaIcon(
                            FontAwesomeIcons.telegram,
                            color: white,
                            size: 14,
                          ),
                          text: 'Telegram',
                        ),
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
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
