import 'package:flutter/material.dart';
import 'package:portfolio/custom_clipper.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ProjectImage extends StatelessWidget {
  const ProjectImage({required this.shape, super.key});
  final int shape;
  @override
  Widget build(BuildContext context) {
    if (shape == 1) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            clipBehavior: Clip.none, // Helps with overflow issues
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: ClipPath(
                  clipper: const CustomContainerClipper(1),
                  child: Container(
                    color: Colors.white,
                    width: ResponsiveBreakpoints.of(context).isDesktop ||
                            ResponsiveBreakpoints.of(context).isTablet
                        ? 500
                        : 340,
                    height: ResponsiveBreakpoints.of(context).isDesktop ||
                            ResponsiveBreakpoints.of(context).isTablet
                        ? 300
                        : 180,
                    child: const Center(),
                  ),
                ),
              ),
              Positioned(
                right: ResponsiveBreakpoints.of(context).isTablet
                    ? 270
                    : 10, // Distance from the right edge
                bottom: 0, // Distance from the bottom edge
                child: Container(
                  width: ResponsiveBreakpoints.of(context).isDesktop ||
                          ResponsiveBreakpoints.of(context).isTablet
                      ? 150
                      : 90,
                  height: ResponsiveBreakpoints.of(context).isDesktop ||
                          ResponsiveBreakpoints.of(context).isTablet
                      ? 150
                      : 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: ResponsiveBreakpoints.of(context).isTablet
                ? const EdgeInsets.only(right: 280)
                : EdgeInsets.zero,
            child: Container(
              width: ResponsiveBreakpoints.of(context).isDesktop ||
                      ResponsiveBreakpoints.of(context).isTablet
                  ? 150
                  : 90,
              height: ResponsiveBreakpoints.of(context).isDesktop ||
                      ResponsiveBreakpoints.of(context).isTablet
                  ? 150
                  : 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      );
    } else if (shape == 2) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: ResponsiveBreakpoints.of(context).isDesktop ||
                    ResponsiveBreakpoints.of(context).isTablet
                ? 140
                : 80,
            height: ResponsiveBreakpoints.of(context).isDesktop ||
                    ResponsiveBreakpoints.of(context).isTablet
                ? 140
                : 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: ClipPath(
                  clipper: const CustomContainerClipper(2),
                  child: Container(
                    color: Colors.white,
                    width: 600,
                    height: ResponsiveBreakpoints.of(context).isDesktop ||
                            ResponsiveBreakpoints.of(context).isTablet
                        ? 350
                        : 200,
                    child: const Center(),
                  ),
                ),
              ),
              Positioned(
                left: ResponsiveBreakpoints.of(context).isDesktop ||
                        ResponsiveBreakpoints.of(context).isTablet
                    ? 10
                    : 0, // Distance from the right edge
                top: 0,
                // Distance from the bottom edge
                child: Container(
                  width: ResponsiveBreakpoints.of(context).isDesktop ||
                          ResponsiveBreakpoints.of(context).isTablet
                      ? 140
                      : 80,
                  height: ResponsiveBreakpoints.of(context).isDesktop ||
                          ResponsiveBreakpoints.of(context).isTablet
                      ? 140
                      : 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              Container(
                width: ResponsiveBreakpoints.of(context).isDesktop ||
                        ResponsiveBreakpoints.of(context).isTablet
                    ? 125
                    : 65,
                height: ResponsiveBreakpoints.of(context).isDesktop ||
                        ResponsiveBreakpoints.of(context).isTablet
                    ? 125
                    : 65,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: ResponsiveBreakpoints.of(context).isDesktop ||
                        ResponsiveBreakpoints.of(context).isTablet
                    ? 125
                    : 65,
                height: ResponsiveBreakpoints.of(context).isDesktop ||
                        ResponsiveBreakpoints.of(context).isTablet
                    ? 300
                    : 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
          SizedBox(
            width: ResponsiveBreakpoints.of(context).isDesktop ||
                    ResponsiveBreakpoints.of(context).isTablet
                ? 15
                : 10,
          ),
          Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Container(
                width: ResponsiveBreakpoints.of(context).isDesktop ||
                        ResponsiveBreakpoints.of(context).isTablet
                    ? 300
                    : 150,
                height: ResponsiveBreakpoints.of(context).isDesktop ||
                        ResponsiveBreakpoints.of(context).isTablet
                    ? 300
                    : 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
          SizedBox(
            width: ResponsiveBreakpoints.of(context).isDesktop ||
                    ResponsiveBreakpoints.of(context).isTablet
                ? 15
                : 10,
          ),
          Container(
            width: ResponsiveBreakpoints.of(context).isDesktop ||
                    ResponsiveBreakpoints.of(context).isTablet
                ? 125
                : 65,
            height: ResponsiveBreakpoints.of(context).isDesktop ||
                    ResponsiveBreakpoints.of(context).isTablet
                ? 400
                : 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ],
      );
    }
  }
}
