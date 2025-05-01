import 'package:flutter/material.dart';
import 'package:nti_task_1/core/utils/styles.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 90,
        height: 35,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          children: [
            Icon(Icons.arrow_back_ios_new_rounded),
            Text("Go back", style: Styles.textStyle15),
          ],
        ),
      ),
    );
  }
}
