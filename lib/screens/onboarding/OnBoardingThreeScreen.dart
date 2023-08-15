import 'package:flutter/material.dart';
import 'package:recipere/components/atoms/CustomPaginationCircle.dart';
import 'package:recipere/components/molecules/CustomButton.dart';
import 'package:recipere/components/molecules/OnBoardingGradientBackground.dart';
import 'package:recipere/configs/CustomColors.dart';
import 'package:recipere/screens/preferences/UserPreferences.dart';

class OnBoardingThreeScreen extends StatelessWidget {
  const OnBoardingThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const OnBoardingGradientBackground(
              background: 'lib/assets/backgrounds/onboarding-three.png',
              color: CustomColors.primary),
          Positioned(
            bottom: 48,
            left: 24,
            right: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Collaborate",
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                const Text(
                    "Join the community discussion to improve the quality of our oasis of foods!",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    )),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        CustomPaginationCircle(isActive: false),
                        SizedBox(width: 12),
                        CustomPaginationCircle(isActive: false),
                        SizedBox(width: 12),
                        CustomPaginationCircle(isActive: true),
                      ],
                    ),
                    CustomButtonFactory.createButton(
                        type: ButtonType.filled,
                        width: 173,
                        height: 40,
                        color: Colors.white,
                        verticalPadding: 8,
                        borderRadius: 8,
                        text: "Start Now",
                        fontColor: CustomColors.primary,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const UserPreferences()));
                        }).build(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
