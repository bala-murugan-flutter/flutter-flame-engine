import 'package:get/get.dart';

class NavController extends GetxController {
  var currentIndex = 1.obs; // Start from GameListPage

  void changeTab(int index) {
    currentIndex.value = index;
  }
}
