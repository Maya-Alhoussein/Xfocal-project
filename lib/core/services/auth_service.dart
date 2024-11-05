import 'package:api_task/views/home_page/view/home_view.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'link.dart';
import 'my_service.dart';

class AuthService {
  Future<void> registerUser(String name, String email, String password) async {
    try {
      var fcmToken = await Get.find<MyService>().getFcmToken();
      Map<String, String> requestBody = {
        'name': name,
        'email': email,
        'password': password,
        'fcm_token': fcmToken ?? '',
      };

      final response = await http.post(
        Uri.parse(AppLink.registerApi),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(requestBody),
      );

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 200) {
        Get.snackbar('Successful', 'Registration successful');
        Get.to(() => HomeView());
      } else {
        int Code = response.statusCode;
        print('error : $Code');
        Get.snackbar('Failed ! ', 'Registration failed');
      }
    } catch (e) {
      print('Error during registration: $e');
    }
  }

  Future<void> login(String email, String password) async {
    try {
      var fcmToken = await Get.find<MyService>().getFcmToken();
      Map<String, String> requestBody = {
        'email': email,
        'password': password,
        'fcm_token': fcmToken ?? '',
      };

      final response = await http.post(
        Uri.parse(AppLink.loginApi),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(requestBody),
      );

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 200) {
        Get.snackbar('Successful', 'Registration successful');
        Get.to(() => HomeView());
      } else {
        int Code = response.statusCode;
        print('error : $Code');
        Get.snackbar('Failed ! ', 'Registration failed');
      }
    } catch (e) {
      print('Error during registration: $e');
    }
  }
}
