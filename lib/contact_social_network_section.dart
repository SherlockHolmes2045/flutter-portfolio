import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/social_network_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ContactSocialNetworkSection extends StatelessWidget {
  const ContactSocialNetworkSection({super.key});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).isMobile) {
      return SizedBox(
        width: double.maxFinite,
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 20,
          childAspectRatio: 5,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
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
      );
    } else {
      return Row(
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
      );
    }
  }
}
