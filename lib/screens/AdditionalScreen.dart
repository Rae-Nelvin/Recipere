import 'package:flutter/material.dart';
import 'package:recipere/components/molecules/CustomButton.dart';
import 'package:recipere/configs/CustomColors.dart';
import 'package:recipere/screens/LoginScreen.dart';

class AdditionalScreen extends StatelessWidget {
  const AdditionalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'lib/assets/app-icon.png',
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
          const SizedBox(height: 47.81),
          Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                CustomButtonFactory.createButton(ButtonType.filled, 366, 42, CustomColors.secondary, 10, 8, null, "Sign Up",  FontWeight.w600, Colors.white, () {}).build(),
                const SizedBox(height: 16),
                CustomButtonFactory.createButton(ButtonType.outlined, 366, 42, CustomColors.secondary, 10, 8, "lib/assets/google-logo.png", "Continue with Google", FontWeight.w600, CustomColors.primary, () {}).build(),
                const SizedBox(height: 16),
                CustomButtonFactory.createButton(ButtonType.outlined, 366, 42, CustomColors.secondary, 10, 8, "lib/assets/facebook-logo.png", "Continue with Facebook", FontWeight.w600, CustomColors.primary, () {}).build(),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => LoginScreen())
                    );
                  },
                  child: const Text(
                    "Log In",
                    style: TextStyle(
                        color: CustomColors.primary,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
