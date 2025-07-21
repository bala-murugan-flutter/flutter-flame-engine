import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomMatchController extends GetxController {
  final roomCodeController = TextEditingController();
  final errorMessage = RxnString();

  bool validateRoomCode(String code) {
    return code.length == 6 && code.contains(RegExp(r'[A-Za-z]'));
  }

  void showJoinRoomDialog(BuildContext context) {
    errorMessage.value = null; // Reset error before opening dialog

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Center(
            child: Text(
              'Enter Room Code',
              style: TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
                fontFamily: 'mafia',
              ),
            ),
          ),
          backgroundColor: Colors.brown,
          content: Obx(() => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 39.9),
                child: TextField(
                  controller: roomCodeController,
                  decoration: InputDecoration(
                    hintText: 'Type here....',
                    fillColor: Colors.yellow[100],
                    filled: true,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 17.0,
                      horizontal: 15.0,
                    ),
                    hintStyle: const TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'mafia',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'mafia',
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[850],
                  ),
                ),
              ),
              if (errorMessage.value != null)
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    errorMessage.value!,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
            ],
          )),
          actions: [
            TextButton(
              onPressed: () => Get.back(),
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                final enteredCode = roomCodeController.text.trim();
                if (validateRoomCode(enteredCode)) {
                  print('Room code validated: $enteredCode');
                  Get.back(); // Close dialog
                } else {
                  errorMessage.value = 'Invalid room code!';
                }
              },
              child: const Text(
                'Join',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  void onClose() {
    roomCodeController.dispose();
    super.onClose();
  }
}
