import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/toast/toast.dart';


class ProfileController extends GetxController {
  final nameController = TextEditingController();

  void saveName() {
    final name = nameController.text.trim();
    if (name.isEmpty) {
      showToast(message: 'Please enter your name');
      return;
    }

    // You can save the name to a database or SharedPreferences here
    showToast(message: 'Name saved: $name');
  }

  void logoutUser() {
    showToast(message: "Successfully signed out");

  }

  @override
  void onClose() {
    nameController.dispose();
    super.onClose();
  }
}
