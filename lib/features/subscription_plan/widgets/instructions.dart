import 'package:flutter/material.dart';
import 'package:nti_task_1/core/utils/styles.dart';

class Instructions extends StatelessWidget {
  const Instructions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: double.infinity,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F9FE),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "You'll get: ",
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          InstructionLine(title: "Unlimited access"),
          SizedBox(height: 5),
          InstructionLine(title: "200GB storage"),
          SizedBox(height: 5),
          InstructionLine(title: "Sync all you devices "),
        ],
      ),
    );
  }
}

class InstructionLine extends StatelessWidget {
  const InstructionLine({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.blue),
        SizedBox(width: 10),
        Text(
          title,
          style: Styles.textStyle15.copyWith(
            color: const Color.fromARGB(255, 130, 129, 129),
          ),
        ),
      ],
    );
  }
}
