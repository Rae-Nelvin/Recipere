import 'package:flutter/material.dart';
import 'package:recipere/components/atoms/CustomTextFormField.dart';
import 'package:recipere/components/molecules/CustomButton.dart';
import 'package:recipere/configs/CustomColors.dart';
import 'package:recipere/screens/authentication/RegisterScreen.dart';
import 'package:recipere/screens/onboarding/OnBoardingOneScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/assets/icons/app-icon.png',
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 32),
              const Column(
                children: [
                  CustomTextFormField(
                      icon: 'lib/assets/icons/email-icon.png',
                      hintText: "Email",
                      isPassword: false),
                  SizedBox(height: 16),
                  CustomTextFormField(
                      icon: 'lib/assets/icons/password-icon.png',
                      hintText: "Password",
                      isPassword: true),
                  SizedBox(height: 8),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Forgot your password?",
                      style: TextStyle(
                          color: CustomColors.primary,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 60),
              Column(
                children: [
                  CustomButtonFactory.createButton(
                      type: ButtonType.filled,
                      width: 366,
                      height: 43,
                      color: CustomColors.secondary,
                      verticalPadding: 10,
                      borderRadius: 8,
                      text: "Log In",
                      fontColor: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const OnBoardingOneScreen()));
                      }).build(),
                  CustomButtonFactory.createButton(
                      type: ButtonType.text,
                      text: "Sign Up",
                      fontColor: CustomColors.primary,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const RegisterScreen()));
                      }).build()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
