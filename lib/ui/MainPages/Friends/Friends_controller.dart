import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FriendsController extends GetxController {
  final TextEditingController roomCodeController = TextEditingController();
  var errorMessage = ''.obs;

  bool validateRoomCode(String code) {
    return code.length == 6 && code.contains(RegExp(r'[A-Za-z]'));
  }

  void showJoinRoomDialog() {
    Get.dialog(
      AlertDialog(
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
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 39.9),
              child: TextField(
                controller: roomCodeController,
                decoration: InputDecoration(
                  hintText: 'Type here....',
                  fillColor: Colors.yellow[100],
                  filled: true,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
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
            if (errorMessage.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  errorMessage.value,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
          ],
        )),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              roomCodeController.clear();
              errorMessage.value = '';
              Get.back();
            },
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
                debugPrint('Room code validated: $enteredCode');
                errorMessage.value = '';
                roomCodeController.clear();
                Get.back();
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
      ),
    );
  }

  @override
  void onClose() {
    roomCodeController.dispose();
    super.onClose();
  }
}
