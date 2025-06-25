import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test_project/Utils/appColors.dart';

class DetectionSummaryCard extends StatelessWidget {
  final String iconPath;
  final String title;
  final String value;
  final String? subtext;
  final Color? valueColor;
  final Color? subtextColor;

  const DetectionSummaryCard({
    required this.iconPath,
    required this.title,
    required this.value,
    this.subtext,
    this.valueColor,
    this.subtextColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 8, ),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.inactive,
                  )),
              const SizedBox(height: 4),
              Text(value,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: valueColor ?? Colors.black)),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      Text(
                        subtext!,
                        style: TextStyle(
                          fontSize: 12,
                          color: subtextColor ?? AppColors.inactive,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Text(
                        "since last week",
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.inactive,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.red.shade50,
            child: SvgPicture.asset(
              iconPath,
              height: 20,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
