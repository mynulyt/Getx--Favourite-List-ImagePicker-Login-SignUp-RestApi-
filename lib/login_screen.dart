import 'package:fav_list/Login_screem_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginScreemController controller = Get.put(LoginScreemController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Screen")),
      body: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailController.value,
              decoration: InputDecoration(hintText: 'Enter your email..'),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: controller.passwordController.value,
              decoration: InputDecoration(hintText: 'Enter your password...'),
            ),
          ],
        ),
      ),
    );
  }
}
