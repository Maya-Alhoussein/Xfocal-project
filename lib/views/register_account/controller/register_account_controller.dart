import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/services/auth_service.dart';

class RegisterAccountController extends GetxController {
  final AuthService authService = AuthService();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var isLoading = false.obs;

  var isPasswordHidden = true.obs;

  Future<void> register(String name, String email, String password) async {
    await authService.registerUser(name, email, password);
  }

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
