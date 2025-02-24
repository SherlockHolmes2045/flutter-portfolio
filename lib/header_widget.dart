import 'package:flutter/material.dart';
import 'package:portfolio/l10n/menu_widget.dart';
import 'package:portfolio/language_widget.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Ivan\nLemovou',
          style: TextStyle(fontFamily: 'OpenSans'),
        ),
        MenuWidget(),
        LanguageWidget(),
      ],
    );
  }
}
