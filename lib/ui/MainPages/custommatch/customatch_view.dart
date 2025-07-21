import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../Games/Room/Create.dart';
import 'customatch_controller.dart';

class CustomMatchPage extends StatelessWidget {
  const CustomMatchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CustomMatchController());

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/home.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Text(
                "    Create\nFree Room",
                style: TextStyle(
                  fontSize: 35.0,
                  fontFamily: 'mafia',
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple[400],
                ),
              ),
            ),
            Row(
              children: [
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
                    onPressed: () => controller.showJoinRoomDialog(context),
                    icon: Image.asset('assets/join.png', height: 70),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
