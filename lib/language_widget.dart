import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';

class LanguageWidget extends StatefulWidget {
  const LanguageWidget({super.key});

  @override
  State<LanguageWidget> createState() => _LanguageWidgetState();
}

class _LanguageWidgetState extends State<LanguageWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          // onPressed: () {},
          // style: TextButton.styleFrom(
          //   padding: EdgeInsets.zero,
          //     foregroundColor: white, overlayColor: Colors.transparent),
          child: Text(
            'En',
            style: TextStyle(
                fontFamily: 'OpenSans',
                decoration: TextDecoration.underline,
                decorationColor: grey),
          ),
        ),
        InkWell(
          onTap: () {},
          //onPressed: () {},
          // style: TextButton.styleFrom(
          //     padding: EdgeInsets.zero,
          //     foregroundColor: grey, overlayColor: Colors.transparent),
          child: Text(
            'Fr',
            style: TextStyle(fontFamily: 'OpenSans', color: grey),
          ),
        )
      ],
    );
  }
}
