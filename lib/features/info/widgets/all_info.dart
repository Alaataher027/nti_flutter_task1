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
          InfoData(
            title: "main",
            infoData: "+1 2020 577 5548",
            infoColor: Colors.green,
          ),
          Divider(color: Color.fromARGB(160, 208, 206, 206), thickness: 1),

          InfoData(
            title: "home",
            infoData: "+1 2020 577 5548",
            infoColor: Colors.blue,
          ),

          SizedBox(height: 12),

          InfoData(
            title: "bio",
            infoData: "Design adds value faster, then it adds cost",

            infoColor: Color.fromARGB(255, 0, 0, 0),
          ),
          Divider(color: Color.fromARGB(160, 208, 206, 206), thickness: 1),
          SizedBox(height: 20),

          Row(
            children: [
              Text("Notification", style: Styles.textStyle16),
              Spacer(),
              Text(
                "Enabled",
                style: Styles.textStyle16.copyWith(color: Colors.grey),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
                color: Colors.grey,
              ),
            ],
          ),
          Divider(color: Color.fromARGB(160, 208, 206, 206), thickness: 1),
          SizedBox(height: 20),

          Text(
            "Delete Contact",
            style: Styles.textStyle16.copyWith(color: Colors.red),
          ),
          Divider(color: Color.fromARGB(160, 208, 206, 206), thickness: 1),
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
