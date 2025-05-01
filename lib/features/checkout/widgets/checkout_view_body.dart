import 'package:flutter/material.dart';
import 'package:nti_task_1/core/components/custom_button.dart';
import 'package:nti_task_1/core/utils/styles.dart';
import 'package:nti_task_1/features/checkout/widgets/basket.dart';
import 'package:nti_task_1/features/checkout/widgets/custom_app_bar.dart';
import 'package:nti_task_1/features/congrats/congrats_view.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        Basket(),
        Spacer(),
        CheckOutRow(),
        SizedBox(height: 20),
      ],
    );
  }
}

class CheckOutRow extends StatelessWidget {
  const CheckOutRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Total", style: Styles.textStyle16),
              Text("₦ 60000", style: Styles.textStyle20),
            ],
          ),
          SizedBox(width: 15),
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CongratsView()),
                );
              },
              child: CustomButton(
                title: 'CheckOut',
                bgColor: const Color(0xFFFFB36D),
                textColor: Colors.white,
                width: 150,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
