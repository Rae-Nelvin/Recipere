import 'package:flutter/material.dart';
import './screens/authentication/AdditionalScreen.dart';
import './screens/SplashScreen.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipere',
      theme: ThemeData(fontFamily: 'Poppins'),
      home: SplashScreenWithTimer(),
    );
  }
}

class SplashScreenWithTimer extends StatelessWidget {
  final int countdownDuration = 2;

  @override
  Widget build(BuildContext context) {
    return CountdownTimer(
      endTime: DateTime.now().millisecondsSinceEpoch + countdownDuration * 1000,
      onEnd: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => AdditionalScreen()),
        );
      },
      widgetBuilder: (context, timer) {
        if (timer == null) {
          return SplashScreen(countdownDuration: countdownDuration);
        } else
          return SplashScreen(countdownDuration: countdownDuration);
      },
    );
  }
}
