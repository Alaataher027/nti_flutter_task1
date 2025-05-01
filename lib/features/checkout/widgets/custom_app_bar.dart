import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nti_task_1/core/utils/styles.dart';
import 'package:nti_task_1/features/checkout/widgets/custom_back_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 55),
      height: 170,
      width: double.infinity,
      color: const Color(0xFFFFB36D),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(flex: 5),
          CustomBackButton(
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const Spacer(flex: 10),
          Text(
            "My Basket",
            style: Styles.textStyle20.copyWith(color: Colors.white),
          ),
          const Spacer(flex: 30),
        ],
      ),
    );
  }
}
