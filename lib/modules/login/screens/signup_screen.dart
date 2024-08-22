import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../modules.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.find<LoginController>();

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.05),
                    child: const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'GÜRAL ',
                            style: TextStyle(
                              color: Color(0xFFD50F0F),
                              fontSize: 32,
                              fontFamily: 'Libre Franklin',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: 'PORSELEN',
                            style: TextStyle(
                              color: Color(0xFFD50F0F),
                              fontSize: 32,
                              fontFamily: 'Libre Franklin',
                              fontWeight: FontWeight.w300,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 16.0, left: 16, top: 180),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Kayıt Ol",
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 24),
                      // CustomTextField(
                      //     labelText: "Adınız", controller: controller.emailController),
                      // SizedBox(height: 16,),
                      //    CustomTextField(
                      //     labelText: "Soyadınız", controller: controller.emailController),
                      // SizedBox(height: 16,),
                      CustomTextField(
                        controller: controller.emailController,
                        labelText: 'E posta',
                      ),
                      SizedBox(height: 16),
                      CustomTextField(
                        controller: controller.passwordController,
                        obscureText: true,
                        labelText: "Şifre",
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: Obx(() {
                          return ElevatedButton(
                            onPressed: () {
                              controller.signup();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFD50F0F),
                              minimumSize: Size(
                                double.infinity,
                                MediaQuery.of(context).size.height * 0.07,
                              ),
                            ),
                            child: controller.isLoading.value
                                ? CircularProgressIndicator(
                                    color: Colors.white,
                                  )
                                : Text(
                                    'Kayıt Ol',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                          );
                        }),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/login');
                        },
                        child: Center(
                          child: Text(
                            "Zaten bir hesabınız var mı? Giriş Yap",
                            style: TextStyle(
                                color: Color(0XFFA5A9B4),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
