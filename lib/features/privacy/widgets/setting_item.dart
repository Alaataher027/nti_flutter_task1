import 'package:flutter/material.dart';
import 'package:nti_task_1/core/utils/styles.dart';

class SettingItem extends StatelessWidget {
  const SettingItem({super.key, required this.title, required this.state});
  final String title;
  final String state;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 80,??
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: Styles.textStyle15),
              Text(
                state,
                style: Styles.textStyle15.copyWith(color: Colors.grey),
              ),
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.grey,
            size: 21,
          ),
        ],
      ),
    );
  }
}
