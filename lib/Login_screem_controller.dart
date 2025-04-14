import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart';

class LoginScreemController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  void LoginApi() async {
    try {
      final response = await post(
        Uri.parse('https://reqres.in/api/login'),
        body: {
          'email': emailController.value.text,
          'password': passwordController.value.text,
        },
      );
      var data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);
      if (response.statusCode == 200) {
        Get.snackbar('Login Successful', data['error']);
      } else {
        Get.snackbar('Login Failed', data['error']);
      }
    } catch (e) {
      Get.snackbar('Exception', e.toString());
    }
  }
}
