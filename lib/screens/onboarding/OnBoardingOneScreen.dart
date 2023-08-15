import 'package:flutter/material.dart';
import 'package:recipere/components/atoms/CustomPaginationCircle.dart';
import 'package:recipere/components/molecules/CustomButton.dart';
import 'package:recipere/components/molecules/OnBoardingGradientBackground.dart';
import 'package:recipere/configs/CustomColors.dart';
import 'package:recipere/screens/onboarding/OnBoardingTwoScreen.dart';

class OnBoardingOneScreen extends StatelessWidget {
  const OnBoardingOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! < 0) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const OnBoardingTwoScreen()));
        }
      },
      child: Scaffold(
        body: Stack(
          children: [
            const OnBoardingGradientBackground(
                background: 'lib/assets/backgrounds/onboarding-one.png',
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
                    "Get Inspired",
                    style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  const Text(
                      "Don't know what to eat? Find thousands of easy recipes at your fingertips, to save time and eat better!",
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
                          CustomPaginationCircle(isActive: true),
                          SizedBox(width: 12),
                          CustomPaginationCircle(isActive: false),
                          SizedBox(width: 12),
                          CustomPaginationCircle(isActive: false),
                        ],
                      ),
                      CustomButtonFactory.createButton(
                              type: ButtonType.text,
                              text: "Skip",
                              fontColor: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              onPressed: () {})
                          .build(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
