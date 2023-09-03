import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:recipere/components/atoms/CustomButton.dart';
import 'package:recipere/components/atoms/CustomImageButton.dart';
import 'package:recipere/components/atoms/CustomTextFormField.dart';
import 'package:recipere/configs/CustomColors.dart';
import 'package:recipere/data/hackCook/Stories.dart';
import 'package:recipere/data/hackCook/Types.dart';

class HackCookScreen extends StatelessWidget {
  const HackCookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        ],
      ),
    );
  }
}
