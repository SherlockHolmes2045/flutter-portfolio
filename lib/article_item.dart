import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';

class ArticleItem extends StatelessWidget {
  const ArticleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: grey, width: 0.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'The simple example is \n kafka + golang',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans',
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'This article presents a simple way to implement a micro service architecture using Kafka, Golang and Docker.',
            style: TextStyle(
              color: grey,
              fontSize: 12,
              fontFamily: 'OpenSans',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 7,
                ),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Read more',
                  style: TextStyle(
                    color: black,
                    fontSize: 12,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.5,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                ),
                child: Icon(
                  Icons.arrow_forward,
                  color: black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
