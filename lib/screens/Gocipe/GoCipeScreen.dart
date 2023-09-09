import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:recipere/components/atoms/CustomFoodCardHeader.dart';
import 'package:recipere/components/atoms/CustomImageButton.dart';
import 'package:recipere/components/atoms/CustomTextFormField.dart';
import 'package:recipere/components/molecules/CustomFoodCard.dart';
import 'package:recipere/configs/CustomColors.dart';
import 'package:recipere/data/DishType.dart';
import 'package:recipere/data/goCipe/DinnerMenu.dart';
import 'package:recipere/data/goCipe/JustForYou.dart';
import 'package:recipere/data/goCipe/OnProgress.dart';

class GoCipeScreen extends StatelessWidget {
  const GoCipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: const EdgeInsets.fromLTRB(24, 8, 0, 101),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextFormField(
              cornerRadius: 16,
              icon: MaterialSymbols.search,
              hintText: "What are you lookin for? 👀",
              fontWeight: FontWeight.w600,
              isPassword: false,
              boxColor: CustomColors.lightBrown,
              fontColor: CustomColors.secondary,
              rightIcon: MaterialSymbols.tune_filled_outlined,
              onTap: () {},
            ),
            const SizedBox(height: 8),
            const Text(
              "Dinner Menu",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: CustomColors.primary,
                  fontSize: 24),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 154,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dinnerMenudatas.length,
                itemBuilder: (context, index) {
                  final data = dinnerMenudatas[index];
                  return Container(
                    margin: const EdgeInsets.only(right: 25),
                    child: CustomImageButton(
                        backgroundImage: data['image']!,
                        width: 366,
                        height: 154,
                        contentAlignment: Alignment.bottomCenter,
                        borderRadius: 16,
                        texts: Text(
                          data['title']!,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 16),
                        ),
                        textPadding: const EdgeInsets.only(bottom: 17),
                        overlayColor: CustomColors.black,
                        onTap: () {}),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Just For You ❤",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: CustomColors.primary,
                  fontSize: 24),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: justForYouDatas.length,
                itemBuilder: (context, index) {
                  final data = justForYouDatas[index];
                  return Container(
                    margin: const EdgeInsets.only(right: 19),
                    child: CustomFoodCard(
                        width: 173,
                        borderRadius: 16,
                        header: CustomFoodCardHeader(
                          width: 173,
                          height: 154,
                          image: data['image']!,
                          color: CustomColors.black,
                          leftIcon: MaterialSymbols.timer,
                          leftText: data['leftText']!,
                        ),
                        descriptions: Padding(
                          padding: const EdgeInsets.only(left: 8, top: 2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data['title']!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: CustomColors.primary,
                                    fontSize: 16),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    data['subtitle']!,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: CustomColors.primary,
                                      fontSize: 12,
                                    ),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: List.generate(
                                      int.parse(data['stars']!),
                                      (index) => const Icon(
                                        MaterialSymbols.star_filled,
                                        color: CustomColors.golden,
                                        size: 12,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    data['values'].toString(),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: CustomColors.primary,
                                      fontSize: 10,
                                    ),
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
            const SizedBox(height: 24),
            const Text(
              "On Proggress 🚧",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: CustomColors.primary,
                  fontSize: 24),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 225,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: onProgressDatas.length,
                itemBuilder: (context, index) {
                  final data = onProgressDatas[index];
                  return Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: CustomFoodCard(
                        width: 178,
                        borderRadius: 227,
                        header: CustomFoodCardHeader(
                            width: 178,
                            height: 161,
                            image: data['image']!,
                            color: CustomColors.black),
                        descriptions: Padding(
                          padding: const EdgeInsets.only(left: 6, top: 2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data['title']!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: CustomColors.primary,
                                    fontSize: 16),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    data['subtitle']!,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: CustomColors.primary,
                                      fontSize: 12,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: List.generate(
                                      int.parse(data['stars']!),
                                      (index) => const Icon(
                                        MaterialSymbols.star_filled,
                                        color: CustomColors.golden,
                                        size: 12,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    data['values'].toString(),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: CustomColors.primary,
                                      fontSize: 10,
                                    ),
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
            // const SizedBox(height: 24),
            // const Text(
            //   "Categories",
            //   style: TextStyle(
            //       fontWeight: FontWeight.w700,
            //       color: CustomColors.primary,
            //       fontSize: 24),
            // ),
            // const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
