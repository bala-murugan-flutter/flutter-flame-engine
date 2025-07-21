import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Games/List.dart';
import '../MainPages/Friends/Friends_Viwe.dart';
import '../MainPages/Profile/Profile_View.dart';
import 'nav_controller.dart';

class NavView extends StatelessWidget {
  const NavView({super.key});

  @override
  Widget build(BuildContext context) {
    final NavController controller = Get.put(NavController());

    final List<Widget> items = <Widget>[
      SizedBox(
        height: 35,
        child: Image.asset('assets/money-bag.png'),
      ),
      SizedBox(
        height: 44,
        child: Image.asset('assets/mainlogo.png'),
      ),
      SizedBox(
        height: 44,
        child: Image.asset('assets/man.png'),
      ),
    ];

    final List<Widget> screens = <Widget>[
       ProfilePage(),
       GameListPage(),
       FriendsView(),
    ];

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/home.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Obx(() => screens[controller.currentIndex.value]),
          bottomNavigationBar: Obx(
                () => CurvedNavigationBar(
              items: items,
              height: 60,
              index: controller.currentIndex.value,
              backgroundColor: Colors.transparent,
              color: Colors.yellowAccent,
              onTap: controller.changeTab,
            ),
          ),
        ),
      ),
    );
  }
}
