import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
//login method handling using by getx

class LoginScreemController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  RxBool loading = false.obs;

  void LoginApi() async {
    loading.value = true;
    try {
      final response = await post(
        Uri.parse('https://reqres.in/api/login'),
        body: {
          'email': emailController.value.text,
          'password': passwordController.value.text,
        },
      );
      var data = jsonDecode(response.body);

      if (response.statusCode == 200) {
        loading.value = false;
        Get.snackbar('Login Successful', 'Congrasulations');
      } else {
        loading.value = false;
        Get.snackbar('Login Failed', data['error']);
      }
    } catch (e) {
      loading.value = false;
      Get.snackbar('Exception', e.toString());
    }
  }
}
