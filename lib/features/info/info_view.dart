import 'package:flutter/material.dart';
import 'package:nti_task_1/features/info/widgets/info_view_body.dart';

class InfoView extends StatelessWidget {
  const InfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: InfoViewBody(), backgroundColor: Colors.white);
  }
}
