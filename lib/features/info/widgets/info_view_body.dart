import 'package:flutter/material.dart';
import 'package:nti_task_1/features/info/widgets/all_info.dart';
import 'package:nti_task_1/features/info/widgets/custom_app_bar.dart';

class InfoViewBody extends StatelessWidget {
  const InfoViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(children: [CustomAppBar(), AllInfoList()]),
    );
  }
}
