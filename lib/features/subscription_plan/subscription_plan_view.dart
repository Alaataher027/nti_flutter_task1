import 'package:flutter/material.dart';
import 'package:nti_task_1/features/subscription_plan/widgets/subscription_plan_view_body.dart';

class SubscriptionPlanView extends StatelessWidget {
  const SubscriptionPlanView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SubscriptionPlanViewBody(),
      backgroundColor: Colors.white,
    );
  }
}
