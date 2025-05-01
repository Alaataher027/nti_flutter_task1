import 'package:flutter/material.dart';
import 'package:nti_task_1/core/utils/styles.dart';
import 'package:nti_task_1/features/privacy/privacy_view.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: 40,
      decoration: const BoxDecoration(color: Color(0xFFF6F6F6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Text(
              "Cancel",
              style: Styles.textStyle15.copyWith(color: Colors.blue),
            ),
          ),
          const Text("Info", style: Styles.textStyle16),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PrivacyView()),
              );
            },
            child: Text(
              "Done",
              style: Styles.textStyle15.copyWith(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
