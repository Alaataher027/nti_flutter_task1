import 'package:flutter/material.dart';
import 'package:nti_task_1/core/utils/styles.dart';

class AllInfoList extends StatelessWidget {
  const AllInfoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InfoData(
            title: "main",
            infoData: "+1 2020 577 5548",
            infoColor: Colors.green,
          ),
          const Divider(color: Color.fromARGB(160, 208, 206, 206), thickness: 1),

          const InfoData(
            title: "home",
            infoData: "+1 2020 577 5548",
            infoColor: Colors.blue,
          ),

          const SizedBox(height: 12),

          const InfoData(
            title: "bio",
            infoData: "Design adds value faster, then it adds cost",

            infoColor: Color.fromARGB(255, 0, 0, 0),
          ),
          const Divider(color: Color.fromARGB(160, 208, 206, 206), thickness: 1),
          const SizedBox(height: 20),

          Row(
            children: [
              const Text("Notification", style: Styles.textStyle16),
              const Spacer(),
              Text(
                "Enabled",
                style: Styles.textStyle16.copyWith(color: Colors.grey),
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
                color: Colors.grey,
              ),
            ],
          ),
          const Divider(
            color: Color.fromARGB(160, 208, 206, 206),
            thickness: 1,
          ),
          const SizedBox(height: 20),

          Text(
            "Delete Contact",
            style: Styles.textStyle16.copyWith(color: Colors.red),
          ),
          const Divider(
            color: Color.fromARGB(160, 208, 206, 206),
            thickness: 1,
          ),
        ],
      ),
    );
  }
}

class InfoData extends StatelessWidget {
  const InfoData({
    super.key,
    required this.title,
    required this.infoData,
    required this.infoColor,
  });
  final String title;
  final String infoData;
  final Color infoColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Styles.textStyle16),
        Text(
          infoData,
          style: Styles.textStyle16.copyWith(color: infoColor),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
