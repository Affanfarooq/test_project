// toggle_card.dart
import 'package:flutter/material.dart';
import 'package:flutter_test_project/Controllers/callingController.dart';
import 'package:flutter_test_project/Utils/appColors.dart';
import 'package:flutter_test_project/Widgets/callDialog.dart';
import 'package:get/get.dart';

class ToggleCard extends StatelessWidget {
  final CallingController controller = Get.put(CallingController());

  ToggleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.border),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  const Text(
                    "Scam Protection",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: !controller.isProtectionEnabled.value
                          ? AppColors.green.withOpacity(0.1)
                          : Colors.red.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      controller.isProtectionEnabled.value ? "ON" : "OFF",
                      style: TextStyle(
                        color: !controller.isProtectionEnabled.value ? AppColors.green : Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              const Text(
                "Block suspicious calls and messages",
                style: TextStyle(color: AppColors.inactive, fontSize: 14),
              ),
            ]),
            Switch(
              value: controller.isProtectionEnabled.value,
              onChanged: (val) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return SuspiciousCallDialog(
                      onAccept: () {
                        controller.toggleProtection(false);
                        Get.back();
                      },
                      onBlock: () {
                        controller.toggleProtection(true);
                        Get.back();
                      },
                    );
                  },
                );
              },
              activeColor: AppColors.background,
              activeTrackColor: AppColors.primary,
              inactiveThumbColor: AppColors.primary,
              inactiveTrackColor: Colors.white,
            )
          ],
        ),
      );
    });
  }
}
