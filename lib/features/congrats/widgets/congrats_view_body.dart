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
          Spacer(flex: 20),
          Image.asset("assets/images/check_image.png", height: 200, width: 200),
          Text("Cogratulations!!!", style: Styles.textStyle30),
          Text("You order have been taken and", style: Styles.textStyle15),
          Text("is being attended to", style: Styles.textStyle15),
          Spacer(flex: 9),

          CustomButton(
            title: 'Track order',
            bgColor: const Color(0xFFFFB36D),
            textColor: Colors.white,
            width: 150,
          ),
          Spacer(flex: 9),
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
          Spacer(flex: 25),
        ],
      ),
    );
  }
}
