import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/services/auth_service.dart';

class SignInController extends GetxController {
  final AuthService authService = AuthService();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var isPasswordHidden = true.obs;
  var isLoading = false.obs;

  Future<void> login(String email, String password) async {
    await authService.login(email, password);
  }

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }
  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
