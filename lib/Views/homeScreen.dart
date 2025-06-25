import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test_project/Utils/appColors.dart';
import 'package:flutter_test_project/Widgets/detectionSummaryCard.dart';
import 'package:flutter_test_project/Widgets/protectionSummaryCard.dart';
import 'package:flutter_test_project/Widgets/sectionHeading.dart';
import 'package:flutter_test_project/Widgets/toggleCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                        'https://i.pravatar.cc/150?img=8', 
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(width: 12),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome, Ali!",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          "Your scam protection is active",
                          style: TextStyle(color: AppColors.inactive),
                        ),
                      ],
                    ),
                  ],
                ),
                Stack(
                  children: [
                    SvgPicture.asset('assets/icons/notification.svg'),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primary,
                        ),
                        child: const Text(
                          "1",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SectionHeading("Protection Summary"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ProtectionSummaryCard(
                    iconPath: 'assets/icons/call.svg',
                    title: "Blocked Calls",
                    value: "45",
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: ProtectionSummaryCard(
                    iconPath: 'assets/icons/message.svg',
                    title: "Blocked Messages",
                    value: "30",
                  ),
                ),
              ],
            ),
            ToggleCard(),
            const SectionHeading("Detection Summary"),
            const DetectionSummaryCard(
              iconPath: 'assets/icons/protection.svg',
              title: "Total Scam Numbers Detected",
              value: "152",
              subtext: "+12 new ",
              valueColor: Colors.black,
              subtextColor: AppColors.green,
            ),
            const DetectionSummaryCard(
              iconPath: 'assets/icons/alerts.svg',
              title: "High-risk Alerts Today",
              value: "8",
              subtext: "+3 ",
              valueColor: Colors.black,
              subtextColor: AppColors.red,
            ),
          ],
        ),
      ),
    );
  }
}
