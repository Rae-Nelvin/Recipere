import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:recipere/components/atoms/CustomButton.dart';
import 'package:recipere/components/atoms/CustomFoodCardHeader.dart';
import 'package:recipere/components/atoms/CustomImageButton.dart';
import 'package:recipere/components/atoms/CustomTextFormField.dart';
import 'package:recipere/components/molecules/CustomFoodCard.dart';
import 'package:recipere/configs/CustomColors.dart';
import 'package:recipere/data/hackCook/Recommendation.dart';
import 'package:recipere/data/hackCook/Stories.dart';
import 'package:recipere/data/hackCook/Trending.dart';
import 'package:recipere/data/hackCook/Types.dart';

class HackCookScreen extends StatelessWidget {
  const HackCookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: const EdgeInsets.fromLTRB(24, 8, 24, 101),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextFormField(
              cornerRadius: 16,
              icon: MaterialSymbols.search,
              hintText: "What are you lookin for? 👀",
              fontWeight: FontWeight.w600,
              isPassword: false,
              boxColor: Colors.white,
              fontColor: CustomColors.gray,
              rightIcon: MaterialSymbols.tune_filled_outlined,
              onTap: () {},
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 36,
              child: ListView.builder(
                  itemCount: hackCookTypesDatas.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final data = hackCookTypesDatas[index];

                    return Container(
                      margin: const EdgeInsets.only(right: 9),
                      child: CustomButton(
                          width: 112,
                          height: 36,
                          backgroundColor: CustomColors.darkBrown,
                          borderColor: Colors.transparent,
                          verticalPadding: 9,
                          borderRadius: 8,
                          text: data['type']!,
                          fontColor: CustomColors.primary,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          onPressed: () {}),
                    );
                  }),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 154,
              child: ListView.builder(
                itemCount: hackCookStoriesDatas.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final data = hackCookStoriesDatas[index];

                  return Container(
                    margin: const EdgeInsets.only(right: 16),
                    child: CustomImageButton(
                        backgroundImage: data['image']!,
                        width: 366,
                        height: 154,
                        contentAlignment: Alignment.bottomLeft,
                        borderRadius: 16,
                        overlayColor: CustomColors.primary,
                        texts: Text(data['title']!,
                            style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 16)),
                        textPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 16),
                        onTap: () {}),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'What’s Trending?',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: CustomColors.secondary,
                  fontSize: 24),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 253,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: trendingDatas.length,
                itemBuilder: (context, index) {
                  final data = trendingDatas[index];
                  return Container(
                    margin: const EdgeInsets.only(right: 16),
                    child: CustomFoodCard(
                        width: 173,
                        borderRadius: 16,
                        header: CustomFoodCardHeader(
                          image: data['image']!,
                          width: 173,
                          height: 154,
                          color: Colors.transparent,
                        ),
                        descriptions: Container(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data['title']!,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: CustomColors.primary,
                                  fontSize: 16,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  Text(
                                    data['subtitle']!,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                        fontSize: 12),
                                  ),
                                  const SizedBox(width: 2),
                                  const Icon(
                                    MaterialSymbols.verified_filled,
                                    color: CustomColors.blue,
                                    size: 14,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.remove_red_eye_outlined,
                                    color: CustomColors.gray,
                                    size: 16,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    data['views']!,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: CustomColors.gray,
                                        fontSize: 12),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        onTap: () {}),
                  );
                },
              ),
            ),
            const SizedBox(height: 32),
            const Text(
              'Recommendation',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: CustomColors.secondary,
                  fontSize: 24),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 328,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: recommendationDatas.length,
                itemBuilder: (context, index) {
                  final data = recommendationDatas[index];
                  return Container(
                    margin: const EdgeInsets.only(right: 16),
                    child: CustomFoodCard(
                        width: 365,
                        borderRadius: 16,
                        header: CustomFoodCardHeader(
                          width: 365,
                          height: 202,
                          image: data['image']!,
                          color: Colors.black,
                          leftText: data['views']!,
                          leftIcon: Icons.remove_red_eye_outlined,
                        ),
                        descriptions: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          height: 124,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                data['title']!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: CustomColors.primary,
                                    fontSize: 24),
                              ),
                              const SizedBox(height: 4),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        data['subtitle']!,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: CustomColors.secondary,
                                            fontSize: 16),
                                      ),
                                      const SizedBox(width: 2),
                                      const Icon(
                                        MaterialSymbols.verified_filled,
                                        color: CustomColors.blue,
                                        size: 14,
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    MaterialSymbols
                                        .local_fire_department_filled,
                                    color: CustomColors.golden,
                                    size: 32,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        onTap: () {}),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
