import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/menu_item.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    if (ResponsiveBreakpoints.of(context).isDesktop ||
        ResponsiveBreakpoints.of(context).isTablet) {
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
            route: '/articles',
          ),
          const MenuItem(
            text: 'Contacts',
            route: '',
          ),
        ],
      );
    }else{
      return Column(
        spacing: 30,
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
            route: '/articles',
          ),
          const MenuItem(
            text: 'Contacts',
            route: '',
          ),
        ],
      );
    }
  }
}
