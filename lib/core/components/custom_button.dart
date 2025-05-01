import 'package:flutter/material.dart';
import 'package:nti_task_1/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.bgColor,
    required this.textColor,
    required this.width, this.onTap,
  });
  final String title;
  final Color bgColor;
  final Color textColor;
  final double width;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: const Color(0xFFFFB36D)),
        ),
        child: Center(
          child: Text(
            title,
            style: Styles.textStyle13.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
