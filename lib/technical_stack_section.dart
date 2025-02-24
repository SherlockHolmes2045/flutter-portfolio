import 'package:flutter/material.dart';

import 'package:portfolio/colors.dart';
import 'package:portfolio/github_button.dart';

class TechnicalStackSection extends StatelessWidget {
  const TechnicalStackSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            width: 500,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Backend',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 16,
                    color: darkGrey,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Java / Spring boot / php / Laravel / Nodejs / Express / NestJS / Golang / PostgresSQL / Mysql / MongoDB / Redis / Kafka / RabbitMQ / Microservice',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 12,
                    color: black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                width: 250,
                decoration: BoxDecoration(
                  color: black,
                  border: Border.all(color: grey, width: 0.25),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Front-end',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 16,
                        color: grey,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Typescript / Angular / RxJs / Vue / Vuex / Jest / Pupeteer',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 12,
                        color: white.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 12, top: 0),
                child: SizedBox(width: 150, child: GithubButton()),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            width: 500,
            decoration: BoxDecoration(
              color: black,
              border: Border.all(color: grey, width: 0.25),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mobile',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 16,
                    color: grey,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Flutter / Dart / Gradle / Firebase / Android / ios / Xcode / Swift / Codemagic / Shorebird',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 12,
                    color: white.withOpacity(0.8),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Some of my favorite technologies,\ntopics or tools,I've worked with",
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  color: grey,
                  fontSize: 13,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                width: 250,
                decoration: BoxDecoration(
                  color: black,
                  border: Border.all(color: grey, width: 0.25),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'DevOps',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 16,
                        color: grey,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Nginx / Apache / Docker / (CI/CD) / k8s / Jenkins / Bash',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 12,
                        color: white.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
