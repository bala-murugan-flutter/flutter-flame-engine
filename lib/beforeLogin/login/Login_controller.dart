import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/toast/toast.dart';


class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var isLoading = false.obs;

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void signIn() async {
    if (!formKey.currentState!.validate()) return;

    isLoading.value = true;

    await Future.delayed(const Duration(seconds: 1)); // simulate loading

    showToast(message: 'User signed in successfully');

    isLoading.value = false;

  }

  void signInWithGoogle() {
    showToast(message: 'Google Sign In clicked');
    // TODO: Add Google Sign-In logic
  }
}
