// app_routes.dart
import 'package:get/get.dart';
// ✅ Views
import '../beforeLogin/SplashScrren/Splash_Viwe.dart';
import '../beforeLogin/SplashScrren/Splash_controller.dart';
import '../beforeLogin/login/Login_controller.dart';
import '../beforeLogin/login/Login_view.dart';

import '../ui/Games/Room/Create.dart';
import '../ui/MainPages/Friends/Friends_Viwe.dart';
import '../ui/MainPages/Friends/Friends_controller.dart';
import '../ui/MainPages/Profile/Profile_Controller.dart';
import '../ui/MainPages/Profile/Profile_View.dart';
import '../ui/gameRoom/room/room_controller.dart';
import '../ui/navbar/Nav_Controller.dart';
import '../ui/navbar/Nav_view.dart';



// ✅ Controllers

class AppRoutes {
  static final routes = [
    GetPage(
      name: '/',
      page: () =>  NavView(),
      binding: BindingsBuilder(() {
        Get.put((NavController));
      }),
    ),

    GetPage(
      name: '/login',
      page: () =>  LoginPage(),
      binding: BindingsBuilder(() {
        Get.put((LoginController));
      }),
    ),

    GetPage(
      name: '/splashscrren',
      page: () =>  SplashScreen(),
      binding: BindingsBuilder(() {
        Get.put((SplashController));
      }),
    ),


    GetPage(
      name: '/profile',
      page: () =>  ProfilePage(),
      binding: BindingsBuilder(() {
        Get.put((ProfileController));
      }),
    ),

    GetPage(
      name: '/friends',
      page: () =>  FriendsView(),
      binding: BindingsBuilder(() {
        Get.put((FriendsController));
      }),
    ),


    GetPage(
      name: '/1room',
      page: () =>  Room(),
      binding: BindingsBuilder(() {
        Get.put((RoomController));
      }),
    ),

///////gmae of list to play for offline sinalge player /////////





    // ✅ Continue adding more pages here...
  ];
}
