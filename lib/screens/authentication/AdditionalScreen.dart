import 'package:flutter/material.dart';
import 'package:recipere/components/atoms/CustomButton.dart';
import 'package:recipere/components/atoms/CustomTextButton.dart';
import 'package:recipere/configs/CustomColors.dart';
import 'package:recipere/screens/authentication/LoginScreen.dart';
import 'package:recipere/screens/authentication/RegisterScreen.dart';

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
            'lib/assets/icons/app-icon.png',
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 47.81),
          Column(
            children: [
              CustomButton(
                  width: 366,
                  height: 43,
                  backgroundColor: CustomColors.secondary,
                  borderColor: Colors.transparent,
                  verticalPadding: 10,
                  borderRadius: 8,
                  text: "Sign Up",
                  fontColor: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const RegisterScreen()));
                  }),
              const SizedBox(height: 16),
              CustomButton(
                  width: 366,
                  height: 43,
                  backgroundColor: Colors.white,
                  borderColor: CustomColors.secondary,
                  verticalPadding: 10,
                  borderRadius: 8,
                  image: "lib/assets/icons/google-logo.png",
                  text: "Continue with Google",
                  fontColor: CustomColors.primary,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  onPressed: () {}),
              const SizedBox(height: 16),
              CustomButton(
                  width: 366,
                  height: 43,
                  backgroundColor: Colors.white,
                  borderColor: CustomColors.secondary,
                  verticalPadding: 10,
                  borderRadius: 8,
                  image: "lib/assets/icons/facebook-logo.png",
                  text: "Continue with Facebook",
                  fontColor: CustomColors.primary,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  onPressed: () {}),
              CustomTextButton(
                  text: "Log In",
                  fontColor: CustomColors.primary,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
