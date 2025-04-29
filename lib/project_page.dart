import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/article_item.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/contact_section.dart';
import 'package:portfolio/contact_social_network_section.dart';
import 'package:portfolio/contact_title_section.dart';
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
                                (i) => const ArticleItem(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 32, right: 32, top: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ContactTitleSection(),
                        ContactSection(),
                      ],
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.only(
                        top: 50,
                        left: 32,
                        right: 32,
                        bottom: 32,
                      ),
                      child: ContactSocialNetworkSection()),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
