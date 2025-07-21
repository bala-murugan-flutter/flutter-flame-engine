import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameListController extends GetxController {
  void openGameOptionsSheet(Function(Widget) showBottomSheet) {
    showBottomSheet(
      _buildBottomSheet(),
    );
  }

  Widget _buildBottomSheet() {
    return SizedBox(
      height: 300,
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(child: IconButton(onPressed: () {}, icon: Image.asset('assets/2.png', height: 72))),
              Expanded(child: IconButton(onPressed: () {}, icon: Image.asset('assets/5.png', height: 72))),
              Expanded(child: IconButton(onPressed: () {}, icon: Image.asset('assets/10.png', height: 72))),
              Expanded(child: IconButton(onPressed: () {}, icon: Image.asset('assets/25.png', height: 72))),
            ],
          ),
          Row(
            children: [
              Expanded(child: IconButton(onPressed: () {}, icon: Image.asset('assets/50.png', height: 72))),
              Expanded(child: IconButton(onPressed: () {}, icon: Image.asset('assets/100.png', height: 72))),
              Expanded(child: IconButton(onPressed: () {}, icon: Image.asset('assets/250.png', height: 72))),
              Expanded(child: IconButton(onPressed: () {}, icon: Image.asset('assets/500.png', height: 72))),
            ],
          ),
          Row(
            children: [
              Expanded(child: IconButton(onPressed: () {}, icon: Image.asset('assets/free.png', height: 72))),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  child: const Text(
                    "Close",
                    style: TextStyle(
                      color: Colors.red,
                      fontFamily: 'mafia',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () => Get.back(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
