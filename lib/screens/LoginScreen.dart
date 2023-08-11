import 'package:flutter/material.dart';
import 'package:recipere/components/atoms/CustomTextFormField.dart';
import 'package:recipere/components/molecules/CustomButton.dart';
import 'package:recipere/configs/CustomColors.dart';
import 'package:recipere/screens/RegisterScreen.dart';

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
                'lib/assets/app-icon.png',
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 32),
              const Column(
                children: [
                  CustomTextFormField(
                      icon: 'lib/assets/email-icon.png',
                      hintText: "Email",
                      isPassword: false),
                  SizedBox(height: 16),
                  CustomTextFormField(
                      icon: 'lib/assets/password-icon.png',
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
                      text: "Sign Up",
                      fontColor: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const RegisterScreen()));
                      }).build(),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
