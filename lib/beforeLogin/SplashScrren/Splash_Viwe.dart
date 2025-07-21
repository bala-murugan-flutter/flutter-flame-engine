import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splash_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/splash.gif'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
