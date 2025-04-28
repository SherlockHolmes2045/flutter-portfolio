import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/navbar_drawer.dart';

class ArticlesPage extends StatefulWidget {
  const ArticlesPage({super.key});

  @override
  State<ArticlesPage> createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      backgroundColor: black,
      endDrawer: const NavbarDrawer(),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 1100,
            decoration: BoxDecoration(
              border: Border.all(
                color: white,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
