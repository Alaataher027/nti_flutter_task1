import 'package:flutter/material.dart';
import 'package:nti_task_1/core/utils/styles.dart';

class PlanItem extends StatelessWidget {
  const PlanItem({
    super.key,
    required this.title,
    required this.discout,
    required this.price,
    required this.period,
    this.onTap,
    required this.bgColor,
  });

  final String title;
  final String discout;
  final double price;
  final String period;
  final Color bgColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(175, 158, 158, 158)),
          borderRadius: BorderRadius.circular(15),
          color: bgColor,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.circle_outlined),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title, style: Styles.textStyle18),
                Text(
                  discout,
                  style: Styles.textStyle13.copyWith(color: Colors.blueAccent),
                ),
              ],
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$price€", style: Styles.textStyle16),
                Text("Every $period", style: Styles.textStyle13),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
