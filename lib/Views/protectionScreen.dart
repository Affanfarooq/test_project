import 'package:flutter/material.dart';
import 'package:flutter_test_project/Views/callBlockingScreen.dart';
import 'package:flutter_test_project/Widgets/circleBackButton.dart';
import 'package:flutter_test_project/Widgets/protectionScreenCard.dart';
import 'package:get/get.dart';

class ProtectionScreen extends StatelessWidget {
  const ProtectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,

        leadingWidth: 80,
        leading: CircleBackButton(),
        title: const Text(
          'Protection',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 6),
          ProtectionCard(
            title: "Call & Message Blocking",
            subtitle:
                "Block calls and SMS from No Caller ID, international, or known scam numbers.",
            iconPath: 'assets/icons/safe.png',
            onTap: () {
              Get.to(() => const CallBlockingScreen());
            },
          ),
          ProtectionCard(
            title: "Scam Detection & Text Screening",
            subtitle:
                "AI-powered message scanning to detect and block suspicious texts. Add your own filter keywords too.",
            iconPath: 'assets/icons/safety.png',
            onTap: () {
              Get.to(() => const CallBlockingScreen());
            },
          ),
        ],
      ),
    );
  }
}
