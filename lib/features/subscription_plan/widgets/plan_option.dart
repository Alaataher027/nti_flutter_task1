import 'package:flutter/material.dart';
import 'package:nti_task_1/features/subscription_plan/widgets/plan_item.dart';

class PlanOptions extends StatefulWidget {
  const PlanOptions({super.key});

  @override
  State<PlanOptions> createState() => _PlanOptionsState();
}

class _PlanOptionsState extends State<PlanOptions> {
  bool y = false;
  bool m = false;
  bool w = false;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          PlanItem(
            title: 'Yearly',
            discout: '-66 % discount',
            price: 94.80,
            period: 'year',
            onTap: () {
              setState(() {
                y = true;
                m = false;
                w = false;
              });
            },
            bgColor: y == true ? const Color(0xFFEAF2FF) : Colors.white,
          ),
          const SizedBox(height: 12),
          PlanItem(
            title: 'Monthly',
            discout: '-53 % discount',
            price: 10.90,
            period: 'month',
            onTap: () {
              setState(() {
                y = false;
                m = true;
                w = false;
              });
            },
            bgColor: m == true ? const Color(0xFFEAF2FF) : Colors.white,
          ),
          const SizedBox(height: 12),
          PlanItem(
            title: 'Weekly',
            discout: '',
            price: 5.90,
            period: 'week',
            onTap: () {
              setState(() {
                y = false;
                m = false;
                w = true;
              });
            },
            bgColor: w == true ? const Color(0xFFEAF2FF) : Colors.white,
          ),
        ],
      ),
    );
  }
}
