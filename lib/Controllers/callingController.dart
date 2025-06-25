import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CallingController extends GetxController {
  RxBool isProtectionEnabled = true.obs;
  RxBool noCallerID = true.obs;
  RxBool international = true.obs;
  RxBool scamNumbers = true.obs;

  TextEditingController numberController = TextEditingController();

  RxList<String> blockList = <String>[
    '+1 (555) 123-4567',
    '+1 (555) 123-3223',
    '+1 (555) 123-4567',
    '+1 (555) 123-2342',
    '+1 (555) 123-4351',
    '+1 (555) 123-5435',
    '+1 (555) 123-6453',
    '+1 (555) 123-2344',
    '+1 (555) 123-6565',
  ].obs;

  void toggleProtection(bool val) {
    isProtectionEnabled.value = val;
  }

  void addToBlockList() {
    final trimmed = numberController.text.trim();
    if (trimmed.isNotEmpty) {
      blockList.insert(0, trimmed); 
      numberController.clear();
    }
  }

  void deleteFromBlockList(int index) {
    if (index >= 0 && index < blockList.length) {
      blockList.removeAt(index); 
    }
  }
}
