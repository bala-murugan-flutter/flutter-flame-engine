import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'profile_controller.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());

    return Stack(
      children: [
        // Background image with original UI
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/home.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 70),
                  GestureDetector(
                    onTap: controller.logoutUser,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 290),
                      child: Image(
                        image: AssetImage('assets/logout.png'),
                        height: 40,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Image(
                    image: AssetImage('assets/upload.png'),
                    height: 111,
                  ),
                  const SizedBox(height: 18),
                  const Text(
                    'Enter your name',
                    style: TextStyle(
                      fontSize: 26,
                      fontFamily: 'mafia',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: TextField(
                      controller: controller.nameController,
                      decoration: const InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: controller.saveName,
                    child: const Text('Save Name'),
                  ),
                  const SizedBox(height: 17),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Image(
                        image: AssetImage('assets/money-bag.png'),
                        height: 40,
                      ),
                      SizedBox(width: 16),
                      Text(
                        '₹100',
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'mafia',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 17),
                  const Image(image: AssetImage('assets/addm.png'), height: 72),
                  const SizedBox(height: 10),
                  const Image(image: AssetImage('assets/bank.png'), height: 72),
                  const SizedBox(height: 10),
                  const Image(image: AssetImage('assets/info.png'), height: 72),
                  const SizedBox(height: 10),
                  const Image(image: AssetImage('assets/history.png'), height: 72),
                ],
              ),
            ),
          ),
        ),

        // Glass overlay with center message
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
              child: Container(
                color: Colors.white.withOpacity(0.1),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 24),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white.withOpacity(0.35),
                          Colors.white.withOpacity(0.2),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black.withOpacity(0.2),
                        width: 1.5,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 10,
                          spreadRadius: 2,
                          offset: const Offset(2, 4),
                        ),
                      ],
                    ),
                    child: const Text(
                      '🚀 Soon 🚀\nNew Feature\nUnlock 🔓',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        height: 1.6,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),

      ],
    );
  }
}
