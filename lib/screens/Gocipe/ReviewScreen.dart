import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:recipere/components/atoms/CustomButton.dart';
import 'package:recipere/components/atoms/CustomImageButton.dart';
import 'package:recipere/components/atoms/CustomLinearProgressIndicator.dart';
import 'package:recipere/configs/CustomColors.dart';
import 'package:recipere/data/goCipe/JustForYou.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              MaterialSymbols.arrow_back_ios_filled,
              color: Colors.black,
              size: 18,
            )),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: const EdgeInsets.fromLTRB(24, 8, 0, 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Mashed Potato',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: CustomColors.primary,
                      fontSize: 24),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 216,
                child: ListView.builder(
                  itemCount: justForYouDatas.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final data = justForYouDatas[index];
                    return Container(
                      margin: const EdgeInsets.only(right: 14),
                      child: CustomImageButton(
                        backgroundImage: data['image']!,
                        width: 366,
                        height: 216,
                        contentAlignment: Alignment.bottomCenter,
                        borderRadius: 16,
                        texts: const Column(),
                        textPadding: EdgeInsets.zero,
                        onTap: () {},
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Text(
                              'WikiHow',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: CustomColors.primary,
                                  fontSize: 16),
                            ),
                            Icon(
                              MaterialSymbols.verified_filled,
                              color: CustomColors.blue,
                              size: 14,
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: List.generate(
                                int.parse('5'),
                                (index) => const Icon(
                                  MaterialSymbols.star_filled,
                                  color: CustomColors.golden,
                                  size: 12,
                                ),
                              ),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              4.9.toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                color: CustomColors.primary,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 7),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(MaterialSymbols.timer_outlined,
                                color: CustomColors.black, size: 14),
                            SizedBox(width: 4),
                            Text(
                              "49 mins",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: CustomColors.black,
                                  fontSize: 12),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: CustomButton(
                          width: 109,
                          height: 24,
                          backgroundColor: CustomColors.primary,
                          borderColor: Colors.transparent,
                          verticalPadding: 0,
                          borderRadius: 32,
                          text: "Follow",
                          fontColor: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          onPressed: () {}),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Overview",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: CustomColors.primary,
                    fontSize: 24),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "4.7",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: CustomColors.black,
                            fontSize: 24),
                      ),
                      Text(
                        "/5",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: CustomColors.black,
                            fontSize: 16),
                      )
                    ],
                  ),
                  const SizedBox(height: 7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      int.parse('5'),
                      (index) => const Icon(
                        MaterialSymbols.star_filled,
                        color: CustomColors.golden,
                        size: 31,
                      ),
                    ),
                  ),
                  const SizedBox(height: 7),
                  const Text(
                    "77 reviews",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: CustomColors.black,
                        fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(right: 48),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                int.parse('5'),
                                (index) => const Icon(
                                  MaterialSymbols.star_filled,
                                  color: CustomColors.golden,
                                  size: 24,
                                ),
                              ),
                            ),
                            // const SizedBox(width: 12),
                            const CustomLinearProgressIndicator(value: 1.0),
                            const Text(
                              "67",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: CustomColors.black,
                                  fontSize: 14),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                int.parse('4'),
                                (index) => const Icon(
                                  MaterialSymbols.star_filled,
                                  color: CustomColors.golden,
                                  size: 24,
                                ),
                              ),
                            ),
                            // const SizedBox(width: 12),
                            const CustomLinearProgressIndicator(value: 1.0),
                            const Text(
                              "67",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: CustomColors.black,
                                  fontSize: 14),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                int.parse('3'),
                                (index) => const Icon(
                                  MaterialSymbols.star_filled,
                                  color: CustomColors.golden,
                                  size: 24,
                                ),
                              ),
                            ),
                            // const SizedBox(width: 12),
                            const CustomLinearProgressIndicator(value: 1.0),
                            const Text(
                              "67",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: CustomColors.black,
                                  fontSize: 14),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                int.parse('2'),
                                (index) => const Icon(
                                  MaterialSymbols.star_filled,
                                  color: CustomColors.golden,
                                  size: 24,
                                ),
                              ),
                            ),
                            // const SizedBox(width: 12),
                            const CustomLinearProgressIndicator(value: 1.0),
                            const Text(
                              "67",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: CustomColors.black,
                                  fontSize: 14),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                int.parse('1'),
                                (index) => const Icon(
                                  MaterialSymbols.star_filled,
                                  color: CustomColors.golden,
                                  size: 24,
                                ),
                              ),
                            ),
                            // const SizedBox(width: 12),
                            const CustomLinearProgressIndicator(value: 1.0),
                            const Text(
                              "67",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: CustomColors.black,
                                  fontSize: 14),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
