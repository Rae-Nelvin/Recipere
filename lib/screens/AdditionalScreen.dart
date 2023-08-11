import 'package:flutter/material.dart';
import 'package:recipere/components/molecules/CustomButton.dart';
import 'package:recipere/configs/CustomColors.dart';
import 'package:recipere/screens/LoginScreen.dart';
import 'package:recipere/screens/RegisterScreen.dart';

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
          ),
          const SizedBox(height: 47.81),
          Column(
            children: [
              CustomButtonFactory.createButton(
                  type: ButtonType.filled,
                  width: 366,
                  height: 43,
                  color: CustomColors.secondary,
                  verticalPadding: 10,
                  borderRadius: 8,
                  text: "Sign Up",
                  fontColor: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const RegisterScreen()));
                  }).build(),
              const SizedBox(height: 16),
              CustomButtonFactory.createButton(
                      type: ButtonType.outlined,
                      width: 366,
                      height: 43,
                      color: CustomColors.secondary,
                      verticalPadding: 10,
                      borderRadius: 8,
                      icon: "lib/assets/google-logo.png",
                      text: "Continue with Google",
                      fontColor: CustomColors.primary,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      onPressed: () {})
                  .build(),
              const SizedBox(height: 16),
              CustomButtonFactory.createButton(
                      type: ButtonType.outlined,
                      width: 366,
                      height: 43,
                      color: CustomColors.secondary,
                      verticalPadding: 10,
                      borderRadius: 8,
                      icon: "lib/assets/facebook-logo.png",
                      text: "Continue with Facebook",
                      fontColor: CustomColors.primary,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      onPressed: () {})
                  .build(),
              CustomButtonFactory.createButton(
                  type: ButtonType.text,
                  text: "Log In",
                  fontColor: CustomColors.primary,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
                  }).build()
            ],
          ),
        ],
      ),
    );
  }
}
