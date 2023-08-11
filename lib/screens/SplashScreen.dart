import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  final int countdownDuration;

  const SplashScreen({Key? key, required this.countdownDuration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Image.asset(
          'lib/assets/app-icon.png',
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
