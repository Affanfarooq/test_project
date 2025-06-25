import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test_project/Controllers/navBarController.dart';
import 'package:flutter_test_project/Utils/appColors.dart';
import 'package:get/get.dart';


class CustomNavBar extends StatelessWidget {
  final NavBarController controller = Get.find<NavBarController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15,bottom: 12),
      decoration: const BoxDecoration(
        color: AppColors.background,
        border: Border(
          top: BorderSide(color: AppColors.border),
        ),
      ),
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(controller.icons.length, (index) {
            final isSelected = controller.selectedIndex.value == index;
            return GestureDetector(
              onTap: () => controller.changeIndex(index),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    controller.icons[index],
                    color: isSelected ? AppColors.primary : AppColors.inactive,
                    height: 18,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    controller.labels[index],
                    style: TextStyle(
                      color:
                          isSelected ? AppColors.primary : AppColors.inactive,
                      fontWeight: FontWeight.normal,
                    ),
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
