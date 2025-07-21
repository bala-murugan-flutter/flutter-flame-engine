import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Friends_controller.dart';

class FriendsView extends StatelessWidget {
  final FriendsController controller = Get.put(FriendsController());

  FriendsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image + UI
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/home.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: <Widget>[
                const SizedBox(height: 70),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text(
                    '    Create\nFree Room',
                    style: TextStyle(
                      fontSize: 35.0,
                      fontFamily: 'mafia',
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple[400],
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          // Get.to(() => const Room());
                        },
                        icon: Image.asset('assets/room.png', height: 70),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () => controller.showJoinRoomDialog(),
                        icon: Image.asset('assets/join.png', height: 70),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        // Glass effect layer with center message
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
                      '🚀 Soon 🚀\n Get more download then\n play with gf 👩🏿‍🤝‍👩🏼 ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
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
