import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/l10n/menu_widget.dart';

class NavbarDrawer extends StatefulWidget {
  const NavbarDrawer({super.key});

  @override
  State<NavbarDrawer> createState() => _NavbarDrawerState();
}

class _NavbarDrawerState extends State<NavbarDrawer> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Drawer(
      backgroundColor: black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () => Scaffold.of(context).closeEndDrawer(),
                    child: Icon(
                      Icons.close,
                      color: white,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: grey,
              thickness: 0.5,
            ),
            const SizedBox(
              height: 50,
            ),
            const MenuWidget()
          ],
        ),
      ),
    );
  }
}
