import 'package:flutter/material.dart';

class GameListPage extends StatefulWidget {
  const GameListPage({super.key});

  @override
  State<GameListPage> createState() => _GameListPageState();
}

class _GameListPageState extends State<GameListPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            const SizedBox(
              height: 100,
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 140,
                ),
                RawMaterialButton(
                    onPressed: () {
                    },
                    elevation: 1.0,
                    shape: const CircleBorder(),
                    child: Image.asset(
                      'assets/carom.png',
                      height: 70,
                    )),
                const SizedBox(
                  width: 40,
                ),
                RawMaterialButton(
                    onPressed: null,
                    elevation: 1.0,
                    shape: const CircleBorder(),
                    child: Image.asset(
                      'assets/freefire.png',
                      height: 70,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
