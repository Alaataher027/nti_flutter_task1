import 'package:flutter/material.dart';
import 'package:nti_task_1/features/congrats/widgets/congrats_view_body.dart';

class CongratsView extends StatelessWidget {
  const CongratsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const CongratsViewBody(),
      backgroundColor: Colors.white,
    );
  }
}
