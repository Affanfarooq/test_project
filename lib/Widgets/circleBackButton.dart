import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CircleBackButton extends StatelessWidget {
  final Color iconColor;
  final double iconSize;
  final Color borderColor;
  final VoidCallback? onTap;

  const CircleBackButton({
    super.key,
    this.iconColor = Colors.black,
    this.iconSize = 20,
    this.borderColor = const Color(0xFFE0E0E0),
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap ?? () => Get.back(),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: borderColor),
          ),
          padding: const EdgeInsets.all(6),
          child: Icon(
            Icons.arrow_back,
            color: iconColor,
            size: iconSize,
          ),
        ),
      ),
    );
  }
}
