import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';

class SocialNetworkWidget extends StatelessWidget {
  const SocialNetworkWidget(
      {super.key, required this.icon, required this.text});

  final Widget icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
      decoration: BoxDecoration(
          border: Border.all(width: 0.25, color: grey),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        spacing: 5,
        children: [
          icon,
          Text(text,
              style: TextStyle(
                  fontSize: 9,
                  color: Colors.grey,
                  fontFamily: 'OpenSans',
                  fontStyle: FontStyle.italic))
        ],
      ),
    );
  }
}
