import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  var isLoggedIn = false.obs;
  var isLoading = false.obs;
  User? user;

  final TextEditingController emailController =
      TextEditingController(text: "huso@gural.com");
  final TextEditingController passwordController =
      TextEditingController(text: "123456");

  @override
  void onInit() {
    super.onInit();
    // Kullanıcı oturumu kontrol edilir ve ilgili ekranlara yönlendirilir.
    ever(isLoggedIn, handleAuthChanged);
  }

  void handleAuthChanged(bool isLoggedIn) {
    if (isLoggedIn) {
      Get.offAllNamed('/base'); // Giriş başarılı, home sayfasına yönlendirilir
    } else {
      Get.offAllNamed(
          '/login'); // Kullanıcı oturum açmadıysa login sayfasına yönlendirilir
    }
  }

  Future<void> login() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      Get.snackbar("Error", "Email and password cannot be empty");
      return;
    }

    try {
      isLoading.value = true;
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      user = userCredential.user;
      isLoggedIn.value = true;
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Login Error", e.message!);
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> signup() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      Get.snackbar("Error", "Email and password cannot be empty");
      return;
    }
    try {
      isLoading.value = true;
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      user = userCredential.user;
      Get.snackbar("Success", "Account created successfully");
      Get.offAllNamed('/login'); // Kayıt başarılı, giriş sayfasına yönlendir
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Signup Error", e.message!);
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> logout() async {
    await _auth.signOut();
    isLoggedIn.value = false;
  }
}
