import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/menu_item.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Row(
      spacing: 20,
      children: [
        MenuItem(
          text: l10n.about,
          route: '/',
        ),
        const MenuItem(
          text: 'Projects',
          route: '/projects',
        ),
        const MenuItem(
          text: 'Articles',
          route: '',
        ),
        const MenuItem(
          text: 'Contacts',
          route: '',
        ),
      ],
    );
  }
}
