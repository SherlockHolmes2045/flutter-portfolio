import 'package:flutter/material.dart';
import 'package:portfolio/l10n/menu_widget.dart';
import 'package:portfolio/language_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Ivan\nLemovou',
          style: TextStyle(fontFamily: 'OpenSans'),
        ),
        if (ResponsiveBreakpoints.of(context).isDesktop ||
            ResponsiveBreakpoints.of(context).isTablet) ...[
          const MenuWidget(),
          const LanguageWidget(),
        ] else ...[
          const Spacer(),
          Transform.translate(
            offset: const Offset(16, 0),
            child: IconButton(
              icon: Icon(
                Scaffold.of(context).isEndDrawerOpen ? Icons.close : Icons.menu,
                color: Colors.white,
              ),
              onPressed: () => Scaffold.of(context).isEndDrawerOpen
                  ? Scaffold.of(context).closeEndDrawer()
                  : Scaffold.of(context).openEndDrawer(),
            ),
          )
        ]
      ],
    );
  }
}
