import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/custom_clipper.dart';
import 'package:portfolio/github_button.dart';
import 'package:portfolio/header_widget.dart';
import 'package:portfolio/l10n/l10n.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      backgroundColor: black,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 1000,
            decoration: BoxDecoration(
              border: Border.all(
                color: white,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 32, right: 32, top: 12),
                      child: HeaderWidget(),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Text(
                      '... /${l10n.project} ...',
                      style:
                          const TextStyle(fontFamily: 'OpenSans', fontSize: 20),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 32, right: 32, top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Gostat',
                                style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 350,
                                child: Wrap(
                                  runSpacing: 12,
                                  spacing: 12,
                                  children: [
                                    'Go',
                                    'Java',
                                    'Dart',
                                    'Redis',
                                    'PostgreSQL',
                                    'Typescript',
                                  ]
                                      .map(
                                        (e) => Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 16,
                                            vertical: 8,
                                          ),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: grey,
                                              width: 0.5,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Text(
                                            e,
                                            style: const TextStyle(
                                              fontFamily: 'OpenSans',
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                              const SizedBox(
                                height: 60,
                              ),
                              const SizedBox(
                                width: 350,
                                child: Text(
                                  'GOStat - a cutting-edge microservice-based application designed to handle HTTP request authentication and statistics with finesse.',
                                  style: TextStyle(
                                    fontFamily: 'OpenSans',
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const SizedBox(
                                width: 350,
                                child: Text(
                                  'This project comprises several key microservices, each contributing to its overall functionality and prowess.',
                                  style: TextStyle(
                                    fontFamily: 'OpenSans',
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              const SizedBox(width: 150, child: GithubButton()),
                            ],
                          ),
                          ClipPath(
                            clipper: const CustomContainerClipper(1),
                            child: Container(
                              color: Colors.white,
                              width: 550,
                              height: 300,
                              child: const Center(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
