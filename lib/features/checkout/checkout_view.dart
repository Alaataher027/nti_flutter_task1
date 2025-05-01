import 'package:flutter/material.dart';
import 'package:nti_task_1/features/checkout/widgets/checkout_view_body.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CheckoutViewBody(),
      backgroundColor: Colors.white,
    );
  }
}
