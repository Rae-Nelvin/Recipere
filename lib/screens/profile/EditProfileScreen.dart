import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:recipere/configs/CustomColors.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

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
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                MaterialSymbols.check_filled,
                color: Colors.black,
                size: 24,
              )),
        ],
      ),
      body: const EditProfileBody(),
    );
  }
}

class EditProfileBody extends StatelessWidget {
  const EditProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(24, 32, 24, 74),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              children: [
                EditableProfilePicture(),
                SizedBox(height: 8),
                Text(
                  "Change profile photo",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: CustomColors.blue,
                      fontSize: 16),
                ),
              ],
            ),
          ),
          SizedBox(height: 42),
          Text(
            "Account",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: CustomColors.black,
                fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class EditableProfilePicture extends StatelessWidget {
  const EditableProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomRight, children: [
      ClipOval(
        child: Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            border: Border.all(
              color: CustomColors.brown,
              width: 2,
            ),
          ),
          child: Image.asset(
            'lib/assets/creators/jennifer-gover.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.all(
              color: CustomColors.gray,
              width: 3,
            )),
        child: const Padding(
          padding: EdgeInsets.all(3),
          child: Icon(
            MaterialSymbols.edit,
            color: CustomColors.gray,
            size: 20,
          ),
        ),
      )
    ]);
  }
}
