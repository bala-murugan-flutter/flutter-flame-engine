import 'dart:async';
import 'package:get/get.dart';

import '../../ui/navbar/Nav_view.dart';


class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 3), () {
      Get.off(() => NavView());
    });
  }
}
