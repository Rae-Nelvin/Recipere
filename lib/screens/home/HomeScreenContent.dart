import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:recipere/components/atoms/CustomFoodCardDescriptions.dart';
import 'package:recipere/components/atoms/CustomFoodCardHeader.dart';
import 'package:recipere/components/atoms/CustomHeaderSeeAll.dart';
import 'package:recipere/components/molecules/CustomFoodCard.dart';
import 'package:recipere/components/atoms/CustomImageButton.dart';
import 'package:recipere/components/atoms/CustomTextButton.dart';
import 'package:recipere/components/atoms/CustomTextFormField.dart';
import 'package:recipere/configs/CustomColors.dart';

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
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CustomImageButton(
                      backgroundImage:
                          'lib/assets/backgrounds/dishes/turkish-kebab.png',
                      width: 366,
                      height: 154,
                      contentAlignment: Alignment.bottomLeft,
                      borderRadius: 16,
                      texts: const Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Turkish Kebab",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            "Tap see more",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      textPadding: const EdgeInsets.only(left: 10, bottom: 10),
                      onTap: () {}),
                  const SizedBox(width: 16),
                  CustomImageButton(
                      backgroundImage:
                          'lib/assets/backgrounds/dishes/turkish-kebab.png',
                      width: 366,
                      height: 154,
                      contentAlignment: Alignment.bottomLeft,
                      borderRadius: 16,
                      texts: const Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Turkish Kebab",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            "Tap see more",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      textPadding: const EdgeInsets.only(left: 10, bottom: 10),
                      onTap: () {}),
                  const SizedBox(width: 16),
                  CustomImageButton(
                      backgroundImage:
                          'lib/assets/backgrounds/dishes/turkish-kebab.png',
                      width: 366,
                      height: 154,
                      contentAlignment: Alignment.bottomLeft,
                      borderRadius: 16,
                      texts: const Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Turkish Kebab",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            "Tap see more",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      textPadding: const EdgeInsets.only(left: 10, bottom: 10),
                      onTap: () {}),
                ],
              ),
            ),
            const SizedBox(height: 19),
            CustomHeaderSeeAll(title: "Featured", onPressed: () {}),
            SizedBox(
              height: 230,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CustomFoodCard(
                      width: 173,
                      borderRadius: 16,
                      header: const CustomFoodCardHeader(
                        width: 173,
                        height: 154,
                        image:
                            "lib/assets/backgrounds/dishes/shark-fin-soup.png",
                        color: CustomColors.primary,
                        leftIcon: MaterialSymbols.timer,
                        leftText: "114 mins",
                      ),
                      descriptions: const CustomFoodCardDescriptionsWithStar(
                        padding: EdgeInsets.only(top: 7, left: 8, bottom: 11),
                        title: "Shark fin Soup",
                        subtitle: "Maureen Claudia",
                        stars: 5,
                        values: 4.9,
                      ),
                      onTap: () {}),
                  const SizedBox(width: 18),
                  CustomFoodCard(
                      width: 173,
                      borderRadius: 16,
                      header: const CustomFoodCardHeader(
                        width: 173,
                        height: 154,
                        image: "lib/assets/backgrounds/dishes/bruschetta.png",
                        color: CustomColors.primary,
                        leftIcon: MaterialSymbols.timer,
                        leftText: "14 mins",
                      ),
                      descriptions: const CustomFoodCardDescriptionsWithStar(
                        padding: EdgeInsets.only(top: 7, left: 8, bottom: 11),
                        title: "Bruschetta",
                        subtitle: "Amanda K",
                        stars: 5,
                        values: 4.5,
                      ),
                      onTap: () {}),
                  const SizedBox(width: 18),
                  CustomFoodCard(
                      width: 173,
                      borderRadius: 16,
                      header: const CustomFoodCardHeader(
                        width: 173,
                        height: 154,
                        image: "lib/assets/backgrounds/dishes/grilled-carp.png",
                        color: CustomColors.primary,
                        leftIcon: MaterialSymbols.timer,
                        leftText: "49 mins",
                      ),
                      descriptions: const CustomFoodCardDescriptionsWithStar(
                        padding: EdgeInsets.only(top: 7, left: 8, bottom: 11),
                        title: "Grilled Carp",
                        subtitle: "Andika Budianto",
                        stars: 5,
                        values: 4.9,
                      ),
                      onTap: () {}),
                  const SizedBox(width: 18),
                  CustomFoodCard(
                      width: 173,
                      borderRadius: 16,
                      header: const CustomFoodCardHeader(
                        width: 173,
                        height: 154,
                        image:
                            "lib/assets/backgrounds/dishes/strawberry-sorbet.png",
                        color: CustomColors.primary,
                        leftIcon: MaterialSymbols.timer,
                        leftText: "55 mins",
                      ),
                      descriptions: const CustomFoodCardDescriptionsWithStar(
                        padding: EdgeInsets.only(top: 7, left: 8, bottom: 11),
                        title: "Strawberry Sorbet",
                        subtitle: "Renatta Moeloek",
                        stars: 5,
                        values: 4.9,
                      ),
                      onTap: () {}),
                ],
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
          ],
        ),
      ),
    );
  }
}
