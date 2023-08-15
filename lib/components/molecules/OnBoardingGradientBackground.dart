import 'package:flutter/material.dart';

class OnBoardingGradientBackground extends StatelessWidget {
  final String background;
  final Color color;

  const OnBoardingGradientBackground(
      {super.key, required this.background, required this.color});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(background),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                color,
              ],
              stops: [0.5, 1.0],
            )),
          ),
      ],
    );
  }
}
