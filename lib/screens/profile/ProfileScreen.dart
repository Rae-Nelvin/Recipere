import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:recipere/components/atoms/CustomButton.dart';
import 'package:recipere/components/atoms/CustomFoodCardDescriptions.dart';
import 'package:recipere/components/atoms/CustomFoodCardHeader.dart';
import 'package:recipere/components/atoms/CustomProfileShortDesc.dart';
import 'package:recipere/components/atoms/CustomSectionButton.dart';
import 'package:recipere/components/molecules/CustomFoodCard.dart';
import 'package:recipere/components/molecules/CustomHeaderSeeAll.dart';
import 'package:recipere/configs/CustomColors.dart';
import 'package:recipere/data/home/Featured.dart';
import 'package:recipere/screens/profile/EditProfileScreen.dart';
import 'package:recipere/screens/profile/NotificationsSettingScreen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(top: 32, bottom: 86),
        color: CustomColors.white,
        child: Center(
          child: Column(
            children: [
              const CustomProfileShortDesc(
                  profilePicture: 'lib/assets/creators/jennifer-gover.png',
                  name: "Jennifer Gover",
                  job: "Sous Chef at Hell's Kitchen",
                  email: "jennifergover.carrd.co"),
              const SizedBox(height: 16),
              CustomButton(
                  width: 214,
                  height: 40,
                  backgroundColor: CustomColors.white,
                  borderColor: CustomColors.gray,
                  verticalPadding: 8,
                  borderRadius: 8,
                  text: "Profile Settings",
                  fontColor: CustomColors.gray,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (context) => const EditProfileScreen()),
                    );
                  }),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    CustomHeaderSeeAll(title: "Saved posts", onPressed: () {}),
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
                                descriptions:
                                    CustomFoodCardDescriptionsWithStar(
                                  padding: const EdgeInsets.only(
                                      top: 7, left: 8, bottom: 11),
                                  title: data['title']!,
                                  subtitle: data['subtitle']!,
                                  stars: int.parse(data['stars']!),
                                  values: double.parse(data['values']!),
                                ),
                                onTap: () {}),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 16),
                    Column(
                      children: [
                        CustomSectionButton(
                            icon: MaterialSymbols.handshake_filled,
                            text: "Partners Program",
                            onTap: () {}),
                        const SizedBox(height: 16),
                        CustomSectionButton(
                            icon: MaterialSymbols.notifications_filled_outlined,
                            text: "Notifications",
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                    builder: (context) =>
                                        const NotificationsSettingsScreen()),
                              );
                            }),
                        const SizedBox(height: 16),
                        CustomSectionButton(
                            icon: MaterialSymbols.security_filled,
                            text: "Security",
                            onTap: () {}),
                        const SizedBox(height: 16),
                        CustomSectionButton(
                            icon: MaterialSymbols.help_center_filled,
                            text: "Help",
                            onTap: () {}),
                        const SizedBox(height: 16),
                        CustomSectionButton(
                            icon: MaterialSymbols.info_filled,
                            text: "About",
                            onTap: () {}),
                        const SizedBox(height: 16),
                        CustomSectionButton(
                            icon: MaterialSymbols.dark_mode_outlined,
                            text: "Dark Mode",
                            onTap: () {}),
                        const SizedBox(height: 16),
                        CustomSectionButton(
                            icon: MaterialSymbols.logout_filled,
                            text: "Log Out",
                            onTap: () {}),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
