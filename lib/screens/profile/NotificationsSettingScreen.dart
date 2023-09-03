import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:recipere/components/atoms/CustomProfileShortDesc.dart';
import 'package:recipere/components/molecules/CustomProfileSwitchForm.dart';
import 'package:recipere/configs/CustomColors.dart';

class NotificationsSettingsScreen extends StatelessWidget {
  const NotificationsSettingsScreen({super.key});

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
      body: const NotificationsSettingBody(),
    );
  }
}

class NotificationsSettingBody extends StatefulWidget {
  const NotificationsSettingBody({super.key});

  @override
  State<NotificationsSettingBody> createState() =>
      _NotificationsSettingBodyState();
}

class _NotificationsSettingBodyState extends State<NotificationsSettingBody> {
  bool dndSwitchValue = false;
  bool scheduledSwitchValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomProfileShortDesc(
              profilePicture: 'lib/assets/creators/jennifer-gover.png',
              name: "Jennifer Gover",
              job: "Sous Chef at Hell's Kitchen",
              email: "jennifergover.carrd.co"),
          const SizedBox(height: 32),
          const Text(
            'Notifications Settings',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: CustomColors.black,
                fontSize: 16),
          ),
          CustomProfileSwitchForm(
            title: 'Do Not Disturb',
            descriptions:
                'When Do Not Disturb is enabled, no notifications will be available.',
            switchValue: dndSwitchValue,
            onSwitchChanged: (value) {
              setState(() {
                dndSwitchValue = value;
              });
            },
          ),
          CustomProfileSwitchForm(
            title: 'Scheduled',
            descriptions:
                'Customize when you want to receive updates in the notification bar:)',
            switchValue: scheduledSwitchValue,
            onSwitchChanged: (value) {
              setState(() {
                scheduledSwitchValue = value;
              });
            },
            additionalField: Container(
              margin: const EdgeInsets.only(top: 8),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'From',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: CustomColors.black,
                            fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'To',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: CustomColors.black,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            '8:00 AM',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: CustomColors.secondary,
                                fontSize: 16),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '5:00 AM',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: CustomColors.secondary,
                                fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(width: 16),
                      Icon(
                        MaterialSymbols.arrow_forward_ios,
                        size: 16,
                        color: CustomColors.secondary,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
