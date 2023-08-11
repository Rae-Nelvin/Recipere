import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 100),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'lib/assets/app-icon.png',
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
          const SizedBox(height: 32),
        ]
      ),
    );
  }
}
