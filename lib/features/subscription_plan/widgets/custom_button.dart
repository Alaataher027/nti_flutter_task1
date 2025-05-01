import 'package:flutter/material.dart';
import 'package:nti_task_1/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xFF006FFD),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Center(
            child: Text(
              "Subescribe",
              style: Styles.textStyle15.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
