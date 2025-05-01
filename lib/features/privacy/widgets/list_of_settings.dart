import 'package:flutter/material.dart';
import 'package:nti_task_1/core/utils/styles.dart';
import 'package:nti_task_1/features/privacy/widgets/checkbox_item.dart';
import 'package:nti_task_1/features/privacy/widgets/setting_item.dart';

class ListOfSettings extends StatelessWidget {
  const ListOfSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),

          Text(
            "Who can see my personal info",
            style: Styles.textStyle15.copyWith(color: const Color(0xFF008069)),
          ),
          const SizedBox(height: 20),
          const SettingItem(title: 'Last seen and online', state: 'Everyone'),
          const Divider(thickness: 1, color: Color.fromARGB(92, 158, 158, 158)),
          const SettingItem(title: 'Profile photo', state: 'Everyone'),
          const Divider(thickness: 1, color: Color.fromARGB(92, 158, 158, 158)),
          const SettingItem(title: 'About', state: 'Everyone'),
          const Divider(thickness: 1, color: Color.fromARGB(92, 158, 158, 158)),
          const CheckBoxItem(
            state:
                "If turned off, you won't send or receive Read receipts, Read receipts are always sent for group chats.",
            title: "Read receipts",
          ),
        ],
      ),
    );
  }
}
