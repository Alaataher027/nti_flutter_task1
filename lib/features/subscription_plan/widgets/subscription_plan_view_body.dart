import 'package:flutter/material.dart';
import 'package:nti_task_1/features/checkout/checkout_view.dart';
import 'package:nti_task_1/features/subscription_plan/widgets/custom_button.dart';
import 'package:nti_task_1/features/subscription_plan/widgets/info_title.dart';
import 'package:nti_task_1/features/subscription_plan/widgets/instructions.dart';
import 'package:nti_task_1/features/subscription_plan/widgets/plan_option.dart';

class SubscriptionPlanViewBody extends StatelessWidget {
  const SubscriptionPlanViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InfoTitle(),
              PlanOptions(),
              Instructions(),
              CustomButton(
                onTap:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CheckoutView()),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
