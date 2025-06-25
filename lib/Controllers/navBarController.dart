import 'package:flutter/material.dart';
import 'package:flutter_test_project/Views/historyScreen.dart';
import 'package:flutter_test_project/Views/profileScreen.dart';
import 'package:get/get.dart';
import '../Views/homeScreen.dart';
import '../Views/protectionScreen.dart';

class NavBarController extends GetxController {
  RxInt selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }

  final List<Widget> screens = [
    const HomeScreen(),
    const ProtectionScreen(),
    HistoryScreen(),
    ProfileScreen(),
  ];

  final List<String> icons = [
    'assets/icons/home_icon.svg',
    'assets/icons/protection_icon.svg',
    'assets/icons/history_icon.svg',
    'assets/icons/profile_icon.svg',
  ];

  final List<String> labels = [
    'Home',
    'Protection',
    'History',
    'Profile',
  ];
}
