import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'gamelist_controller.dart';

class GameListPage extends StatelessWidget {
  const GameListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(GameListController());

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
            const SizedBox(height: 100),
            Row(
              children: [
                const SizedBox(width: 140),
                RawMaterialButton(
                  onPressed: () {
                    controller.openGameOptionsSheet(
                          (widget) => showModalBottomSheet(
                        context: context,
                        builder: (_) => widget,
                      ),
                    );
                  },
                  elevation: 1.0,
                  shape: const CircleBorder(),
                  child: Image.asset('assets/carom.png', height: 70),
                ),
                const SizedBox(width: 40),
                RawMaterialButton(
                  onPressed: null,
                  elevation: 1.0,
                  shape: const CircleBorder(),
                  child: Image.asset('assets/freefire.png', height: 70),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
