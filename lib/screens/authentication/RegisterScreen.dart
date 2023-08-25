import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:recipere/components/atoms/CustomButton.dart';
import 'package:recipere/components/atoms/CustomDatePicker.dart';
import 'package:recipere/components/atoms/CustomTextButton.dart';
import 'package:recipere/components/atoms/CustomTextFormField.dart';
import 'package:recipere/configs/CustomColors.dart';
import 'package:recipere/screens/authentication/LoginScreen.dart';
import 'package:recipere/screens/onboarding/OnBoardingOneScreen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
                        icon: MaterialSymbols.person_2_filled,
                        hintText: "Name",
                        isPassword: false),
                    SizedBox(height: 16),
                    CustomTextFormField(
                        icon: MaterialSymbols.mail_filled,
                        hintText: "Email",
                        isPassword: false),
                    SizedBox(height: 16),
                    CustomDatePicker(
                        icon: MaterialSymbols.calendar_month_filled,
                        labelText: "D.O.B"),
                    SizedBox(height: 16),
                    CustomTextFormField(
                        icon: MaterialSymbols.lock_filled,
                        hintText: "Password",
                        isPassword: true),
                    SizedBox(height: 16),
                    CustomTextFormField(
                        icon: MaterialSymbols.key_outlined,
                        hintText: "Confirm Your Password",
                        isPassword: true),
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
                        text: "Sign Up",
                        fontColor: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const OnBoardingOneScreen()));
                        }),
                    CustomTextButton(
                        text: "Log In",
                        fontColor: CustomColors.primary,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        })
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
