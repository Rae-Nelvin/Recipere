import 'package:flutter/material.dart';
import 'package:recipere/components/atoms/CustomButton.dart';
import 'package:recipere/components/atoms/CustomTextButton.dart';
import 'package:recipere/components/atoms/CustomTextFormField.dart';
import 'package:recipere/configs/CustomColors.dart';
import 'package:recipere/screens/authentication/RegisterScreen.dart';
import 'package:recipere/screens/onboarding/OnBoardingOneScreen.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';

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
                    cornerRadius: 8,
                    icon: MaterialSymbols.mail_filled,
                    hintText: "Email",
                    fontWeight: FontWeight.w500,
                    isPassword: false,
                    boxColor: CustomColors.quartenary,
                    fontColor: CustomColors.secondary,
                  ),
                  SizedBox(height: 16),
                  CustomTextFormField(
                    cornerRadius: 8,
                    icon: MaterialSymbols.lock_filled,
                    hintText: "Password",
                    fontWeight: FontWeight.w500,
                    isPassword: true,
                    boxColor: CustomColors.quartenary,
                    fontColor: CustomColors.secondary,
                  ),
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
                  CustomButton(
                      width: 366,
                      height: 43,
                      backgroundColor: CustomColors.secondary,
                      borderColor: Colors.transparent,
                      verticalPadding: 10,
                      borderRadius: 8,
                      text: "Log In",
                      fontColor: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const OnBoardingOneScreen()));
                      }),
                  CustomTextButton(
                      text: "Sign Up",
                      fontColor: CustomColors.primary,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const RegisterScreen()));
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
