import 'package:flutter/material.dart';
import 'package:nti_task_1/core/utils/styles.dart';

class InfoTitle extends StatelessWidget {
  const InfoTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 100),
        Text("Choose your\nsubscription plan", style: Styles.textStyle30),
        SizedBox(height: 14),
        Text(
          "And get a 7-day free trial",
          style: TextStyle(color: const Color.fromARGB(255, 132, 132, 132)),
        ),
      ],
    );
  }
}
