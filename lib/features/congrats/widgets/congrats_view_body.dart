import 'package:flutter/material.dart';
import 'package:nti_task_1/core/components/custom_button.dart';
import 'package:nti_task_1/core/utils/styles.dart';
import 'package:nti_task_1/features/info/info_view.dart';

class CongratsViewBody extends StatelessWidget {
  const CongratsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(flex: 20),
          Image.asset("assets/images/check_image.png", height: 200, width: 200),
          const Text("Cogratulations!!!", style: Styles.textStyle30),
          const Text(
            "You order have been taken and",
            style: Styles.textStyle15,
          ),
          const Text("is being attended to", style: Styles.textStyle15),
          const Spacer(flex: 9),

          const CustomButton(
            title: 'Track order',
            bgColor: Color(0xFFFFB36D),
            textColor: Colors.white,
            width: 150,
          ),
          const Spacer(flex: 9),
          CustomButton(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InfoView()),
              );
            },
            title: 'Continue shopping',
            bgColor: Colors.white,
            textColor: const Color(0xFFFFB36D),
            width: 200,
          ),
          const Spacer(flex: 25),
        ],
      ),
    );
  }
}
