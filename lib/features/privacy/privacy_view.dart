import 'package:flutter/material.dart';
import 'package:nti_task_1/core/utils/styles.dart';
import 'package:nti_task_1/features/privacy/widgets/privacy_view_body.dart';

class PrivacyView extends StatelessWidget {
  const PrivacyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const PrivacyViewBody(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 120,
        backgroundColor: const Color(0xFF008069),
        flexibleSpace: SafeArea(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 20),
              child: Row(
                children: [
                  GestureDetector(
                    child: Icon(Icons.arrow_back, color: Colors.white),
                    onTap: () => Navigator.pop(context),
                  ),
                  SizedBox(width: 30),
                  Text(
                    "Privacy",
                    style: Styles.textStyle20.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
