import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:recipere/components/atoms/CustomFoodCardDescriptions.dart';
import 'package:recipere/components/atoms/CustomFoodCardHeader.dart';
import 'package:recipere/components/molecules/CustomFoodCard.dart';
import 'package:recipere/components/atoms/CustomImageButton.dart';
import 'package:recipere/components/atoms/CustomTextButton.dart';
import 'package:recipere/components/atoms/CustomTextFormField.dart';
import 'package:recipere/configs/CustomColors.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 123),
      child: Column(
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
                    textAlignment: MainAxisAlignment.end,
                    textLists: const [
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
                    textAlignment: MainAxisAlignment.end,
                    textLists: const [
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
                    textAlignment: MainAxisAlignment.end,
                    textLists: const [
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
                    textPadding: const EdgeInsets.only(left: 10, bottom: 10),
                    onTap: () {}),
              ],
            ),
          ),
          const SizedBox(height: 19),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Featured",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: CustomColors.primary,
                  fontSize: 24,
                ),
              ),
              CustomTextButton(
                  text: "See All",
                  fontColor: CustomColors.secondary,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  onPressed: () {}),
            ],
          ),
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
                      image: "lib/assets/backgrounds/dishes/shark-fin-soup.png",
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
          )
        ],
      ),
    );
  }
}
