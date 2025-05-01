import 'package:flutter/material.dart';
import 'package:nti_task_1/core/utils/styles.dart';

class CheckBoxItem extends StatefulWidget {
  const CheckBoxItem({super.key, required this.title, required this.state});
  final String title;
  final String state;

  @override
  State<CheckBoxItem> createState() => _CheckBoxItemState();
}

class _CheckBoxItemState extends State<CheckBoxItem> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 120,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.title, style: Styles.textStyle15),
                Text(
                  widget.state,
                  style: Styles.textStyle15.copyWith(color: Colors.grey),
                  overflow: TextOverflow.visible,
                  maxLines: 3,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          // Spacer(),
          Checkbox(
            activeColor: const Color(0xFF008069),
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}
