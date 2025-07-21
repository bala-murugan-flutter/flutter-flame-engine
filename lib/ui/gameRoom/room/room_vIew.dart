import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'room_controller.dart';

class Room extends StatelessWidget {
  const Room({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RoomController());

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/Room.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 60),
              Image.asset('assets/logo.png', height: 122),
              const Text(
                'Select Game',
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'mafia',
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                color: Colors.transparent,
                height: 560,
                width: 372,
                child: ListView(
                  children: [
                    _gameTile(
                      'assets/carom.png',
                      'assets/11.png',
                      onTap: () => controller.selectGame('Carom 11'),
                    ),
                    const SizedBox(height: 20),
                    _gameTile(
                      'assets/carom.png',
                      'assets/22.png',
                      onTap: () => controller.selectGame('Carom 22'),
                    ),
                    const SizedBox(height: 20),
                    _gameTile(
                      'assets/freefire.png',
                      'assets/11.png',
                      onTap: () => controller.selectGame('Freefire 11'),
                    ),
                    const SizedBox(height: 20),
                    _gameTile(
                      'assets/freefire.png',
                      'assets/22.png',
                      onTap: () => controller.selectGame('Freefire 22'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _gameTile(String image1, String image2, {required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 90,
        color: Colors.grey,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(image1),
            const SizedBox(width: 10),
            Image.asset(image2, height: 71),
          ],
        ),
      ),
    );
  }
}
