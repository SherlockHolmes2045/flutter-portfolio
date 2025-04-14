import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/social_network_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HeadlineSocialWidget extends StatelessWidget {
  const HeadlineSocialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).isDesktop) {
      return Row(
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
      );
    } else {
      return Wrap(
        spacing: 10,
        runSpacing: 5,
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
      );
    }
  }
}
