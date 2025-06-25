import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test_project/Controllers/navBarController.dart';
import 'package:flutter_test_project/Widgets/customNavBar.dart';
import 'package:get/get.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  final NavBarController controller = Get.put(NavBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
