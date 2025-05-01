import 'package:flutter/material.dart';
import 'package:nti_task_1/core/utils/styles.dart';
import 'package:nti_task_1/features/privacy/widgets/list_of_settings.dart';
import 'package:nti_task_1/features/privacy/widgets/setting_item.dart';

class PrivacyViewBody extends StatelessWidget {
  const PrivacyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListOfSettings(),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Divider(
              thickness: 1,
              color: Color.fromARGB(92, 158, 158, 158),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Disappearing messages",
                  style: Styles.textStyle15.copyWith(
                    color: const Color(0xFF008069),
                  ),
                ),

                // crossAxisAlignment: CrossAxisAlignment.start,
                const SizedBox(height: 20),

                const SettingItem(title: 'Default message timer', state: 'Off'),
                const Divider(
                  thickness: 1,
                  color: Color.fromARGB(92, 158, 158, 158),
                ),
                const SettingItem(title: 'Groups', state: 'Everyone'),
                const Divider(
                  thickness: 1,
                  color: Color.fromARGB(92, 158, 158, 158),
                ),
                const SettingItem(title: 'Blocked contacts', state: 'None'),
                const Divider(
                  thickness: 1,
                  color: Color.fromARGB(92, 158, 158, 158),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
