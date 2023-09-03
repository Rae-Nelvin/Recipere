import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:recipere/components/atoms/CustomFoodCardHeader.dart';
import 'package:recipere/components/molecules/CustomCreatorCard.dart';
import 'package:recipere/components/molecules/CustomHeaderSeeAll.dart';
import 'package:recipere/components/molecules/CustomFoodCard.dart';
import 'package:recipere/components/atoms/CustomImageButton.dart';
import 'package:recipere/components/atoms/CustomTextFormField.dart';
import 'package:recipere/configs/CustomColors.dart';
import 'package:recipere/data/home/Carousel.dart';
import 'package:recipere/data/home/Creators.dart';
import 'package:recipere/data/home/Featured.dart';
import 'package:recipere/screens/profile/PeopleProfileScreen.dart';
import 'package:social_media_buttons/social_media_button.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.fromLTRB(24, 30, 24, 123),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi Joy!",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: CustomColors.primary,
                        fontSize: 36,
                      ),
                    ),
                    Text(
                      "Good Night🌙",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: CustomColors.secondary,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    MaterialSymbols.notifications_outlined,
                    size: 26,
                  ),
                ),
              ],
            ),
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
            const SizedBox(height: 28),
            SizedBox(
              height: 154,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: carouselDatas.length,
                itemBuilder: (context, index) {
                  final data = carouselDatas[index];
                  return Container(
                    margin: const EdgeInsets.only(right: 16),
                    child: CustomImageButton(
                        backgroundImage: data['backgroundImage']!,
                        width: 366,
                        height: 154,
                        contentAlignment: Alignment.bottomLeft,
                        borderRadius: 16,
                        texts: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data['name']!,
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                            const Text(
                              "Tap see more",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                        textPadding:
                            const EdgeInsets.only(left: 10, bottom: 10),
                        onTap: () {}),
                  );
                },
              ),
            ),
            const SizedBox(height: 19),
            CustomHeaderSeeAll(title: "Featured", onPressed: () {}),
            SizedBox(
              height: 230,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: featuredDatas.length,
                itemBuilder: (context, index) {
                  final data = featuredDatas[index];

                  return Container(
                    margin: const EdgeInsets.only(right: 18),
                    child: CustomFoodCard(
                        width: 173,
                        borderRadius: 16,
                        header: CustomFoodCardHeader(
                          width: 173,
                          height: 154,
                          image: data['image']!,
                          color: CustomColors.primary,
                          leftIcon: MaterialSymbols.timer,
                          leftText: data['leftText'],
                        ),
                        descriptions: Container(
                          padding: const EdgeInsets.only(
                              top: 7, left: 8, bottom: 11),
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
            const SizedBox(height: 31),
            CustomHeaderSeeAll(title: "Recommendation", onPressed: () {}),
            const SizedBox(height: 8),
            CustomImageButton(
                backgroundImage:
                    "lib/assets/backgrounds/dishes/anywhere-anytime.png",
                width: 365,
                height: 154,
                contentAlignment: Alignment.center,
                borderRadius: 16,
                texts: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Anywhere, anytime",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 30),
                    ),
                    Text(
                      "seven-ingredients dishes",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 16),
                    )
                  ],
                ),
                textPadding: const EdgeInsets.symmetric(vertical: 2),
                onTap: () {}),
            const SizedBox(height: 32),
            CustomHeaderSeeAll(title: "Suggested Creator", onPressed: () {}),
            const SizedBox(height: 7),
            SizedBox(
              height: 201,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: creatorsData.length,
                itemBuilder: (context, index) {
                  final data = creatorsData[index];

                  return Container(
                    margin: const EdgeInsets.only(right: 16),
                    child: CustomCreatorCard(
                        image: data['image']!,
                        username: data['username']!,
                        name: data['name']!,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                                builder: (context) => PeopleProfileScreen(
                                      data: data,
                                    )),
                          );
                        }),
                  );
                },
              ),
            ),
            const SizedBox(height: 32),
            Container(
              padding: const EdgeInsets.only(left: 44, right: 57),
              child: const Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "310.777",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: CustomColors.primary,
                                  fontSize: 36),
                            ),
                            Text(
                              "active members",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: CustomColors.primary,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "12.127",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: CustomColors.secondary,
                                  fontSize: 36),
                            ),
                            Text(
                              "recipes",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: CustomColors.secondary,
                                  fontSize: 16),
                            ),
                          ],
                        )
                      ]),
                  SizedBox(height: 18),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 71, right: 31),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "1.713",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: CustomColors.secondary,
                              fontSize: 36),
                        ),
                        Text(
                          "articles",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: CustomColors.secondary,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "539",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: CustomColors.primary,
                              fontSize: 36),
                        ),
                        Text(
                          "professional chefs",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: CustomColors.primary,
                              fontSize: 16),
                        ),
                      ],
                    )
                  ]),
            ),
            const SizedBox(height: 35),
            const Text(
              "Share your story now",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: CustomColors.primary,
                  fontSize: 24),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 46),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SocialMediaButton.facebook(
                    color: CustomColors.secondary,
                    size: 32,
                  ),
                  SocialMediaButton.instagram(
                    color: CustomColors.secondary,
                    size: 32,
                  ),
                  SocialMediaButton.github(
                    color: CustomColors.secondary,
                    size: 32,
                  ),
                  SocialMediaButton.twitter(
                    color: CustomColors.secondary,
                    size: 32,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            CustomImageButton(
                backgroundImage: "lib/assets/backgrounds/main-screen-one.png",
                width: 365,
                height: 234,
                contentAlignment: Alignment.bottomLeft,
                borderRadius: 16,
                overlayColor: CustomColors.pentatenary,
                texts: const Column(
                  children: [
                    Text(
                      "Are you ready to begin your journey with us?",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      "Start your inspiration right here to collaborate with fellow peers and successful chefs to divine your foods ideas1",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                textPadding:
                    const EdgeInsets.symmetric(vertical: 9, horizontal: 9),
                onTap: () {}),
            const SizedBox(height: 32),
            const Text(
              "Copyright 2021 ©Recepiere",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black,
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}
