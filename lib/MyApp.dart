import 'package:flutter/material.dart';
import 'package:games/routes/routes.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splashscrren', // ✅ Default route
      getPages: AppRoutes.routes, // ✅ List of GetPages

    );
  }
}
