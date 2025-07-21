import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bk.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Form(
            key: controller.formKey,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 299),
                const Text(
                  'Welcome',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'game',
                    letterSpacing: 9,
                  ),
                ),
                const SizedBox(height: 24),

                // Email
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 39.9),
                  child: TextFormField(
                    controller: controller.emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      final regex = RegExp(r'^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');
                      if (!regex.hasMatch(value)) {
                        return 'Please check email format';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      contentPadding: EdgeInsets.symmetric(vertical: 17.0, horizontal: 15.0),
                      hintStyle: TextStyle(fontSize: 15.0, fontFamily: 'mafia'),
                    ),
                    style: const TextStyle(fontSize: 15.0, fontFamily: 'mafia'),
                  ),
                ),

                const SizedBox(height: 23),

                // Password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 39.9),
                  child: TextFormField(
                    controller: controller.passwordController,
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    validator: (pass) {
                      if (pass == null || pass.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      contentPadding: EdgeInsets.symmetric(vertical: 17.0, horizontal: 15.0),
                      hintStyle: TextStyle(fontSize: 15.0, fontFamily: 'mafia'),
                    ),
                    style: const TextStyle(fontSize: 15.0, fontFamily: 'mafia'),
                  ),
                ),

                // Obx(() => controller.isLoading.value
                //     ? LoadingIndicator()
                //     : IconButton(
                //   onPressed: controller.signIn,
                //   icon: Image.asset('assets/login.png', height: 70),
                // )),

                Row(
                  children: <Widget>[
                    Expanded(child: Image.asset('assets/Line.png', height: 10)),
                    Expanded(child: Image.asset('assets/OR.png', height: 10)),
                    Expanded(child: Image.asset('assets/Line.png', height: 10)),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 59),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: IconButton(
                          onPressed: controller.signInWithGoogle,
                          icon: Image.asset('assets/google.png', height: 75),
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          onPressed: () {}, // Facebook login
                          icon: Image.asset('assets/facebook.png', height: 75),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    ),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: () => Get.to(() => ()),
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                            fontFamily: 'mafia',
                            color: Colors.blueAccent,
                            fontSize: 19),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
