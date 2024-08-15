import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/core.dart';

class LoginController extends GetxController {
  final AuthService _authService = AuthService();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> signIn() async {
    try {
      // Firebase ile kullanıcı giriş işlemi yapılıyor
      User? user = await _authService.signInWithEmailAndPassword(
        emailController.text,
        passwordController.text,
      );

      // Giriş başarılı, yönlendirme yapılabilir
      Get.offAllNamed('/home');
    } catch (e) {
      // Hata durumunda snackbar ile mesaj gösteriliyor
      Get.snackbar('Error', e.toString());
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
