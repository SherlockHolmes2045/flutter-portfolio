import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';

class SocialNetworkWidget extends StatelessWidget {
  const SocialNetworkWidget(
      {super.key, required this.icon, required this.text});

  final Widget icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        backgroundColor: black,
        overlayColor: white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        side: BorderSide(
          width: 0.5,
          color: grey,
        ),
      ),
      onPressed: () {},
      child: Row(
        spacing: 5,
        children: [
          icon,
          Text(text,
              style: TextStyle(
                  fontSize: 11,
                  color: Colors.grey,
                  fontFamily: 'OpenSans',
                  fontStyle: FontStyle.italic))
        ],
      ),
    );
  }
}
