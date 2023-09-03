import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:recipere/components/atoms/CustomButton.dart';
import 'package:recipere/components/atoms/CustomFoodCardHeader.dart';
import 'package:recipere/components/atoms/CustomProfileShortDesc.dart';
import 'package:recipere/components/molecules/CustomFoodCard.dart';
import 'package:recipere/components/molecules/CustomHeaderSeeAll.dart';
import 'package:recipere/configs/CustomColors.dart';
import 'package:recipere/data/home/Featured.dart';

class PeopleProfileScreen extends StatefulWidget {
  final Map<String, String> data;

  const PeopleProfileScreen({super.key, required this.data});

  @override
  State<PeopleProfileScreen> createState() => PeopleProfileScreenState();
}

class PeopleProfileScreenState extends State<PeopleProfileScreen> {
  bool _isFollowed = false;

  void _followButtonAction() {
    setState(() {
      _isFollowed = !_isFollowed;
    });
  }

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
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.fromLTRB(24, 34, 24, 106),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomProfileShortDesc(
                  profilePicture: widget.data['image']!,
                  name: widget.data['name']!,
                  job: widget.data['job']!,
                  email: widget.data['email']!),
              const SizedBox(height: 16),
              Center(
                child: _isFollowed
                    ? CustomButton(
                        width: 170,
                        height: 40,
                        backgroundColor: CustomColors.secondary,
                        borderColor: Colors.transparent,
                        verticalPadding: 8,
                        borderRadius: 8,
                        text: 'Following',
                        fontColor: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        onPressed: _followButtonAction)
                    : CustomButton(
                        width: 170,
                        height: 40,
                        backgroundColor: CustomColors.darkBrown,
                        borderColor: Colors.transparent,
                        verticalPadding: 8,
                        borderRadius: 8,
                        text: 'Follow',
                        fontColor: CustomColors.primary,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        onPressed: _followButtonAction),
              ),
              const SizedBox(height: 32),
              CustomHeaderSeeAll(title: 'Recipes', onPressed: () {}),
              const SizedBox(height: 8),
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
              const SizedBox(height: 32),
              CustomHeaderSeeAll(title: "Media", onPressed: () {}),
              const SizedBox(height: 8),
              CustomFoodCard(
                  width: 173,
                  borderRadius: 16,
                  header: const CustomFoodCardHeader(
                      width: 173,
                      height: 154,
                      image: 'lib/assets/backgrounds/dishes/gastronomy.png',
                      color: Colors.transparent),
                  descriptions: Container(
                    padding: const EdgeInsets.fromLTRB(8, 4, 8, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Introduction to Gastronomy',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: CustomColors.primary,
                              fontSize: 16),
                        ),
                        Row(
                          children: [
                            Text(widget.data['name']!),
                            const SizedBox(width: 2),
                            const Icon(
                              MaterialSymbols.verified_filled,
                              color: CustomColors.blue,
                              size: 14,
                            ),
                          ],
                        ),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              MaterialSymbols.visibility_filled_outlined,
                              size: 12,
                              color: CustomColors.gray,
                            ),
                            Text(
                              '999.999+',
                              style: TextStyle(
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
            ],
          ),
        ),
      ),
    );
  }
}
