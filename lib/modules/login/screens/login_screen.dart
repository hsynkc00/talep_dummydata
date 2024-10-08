import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller.dart';
import '../widgets/custom_text_field.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          _backgroundImageSection(context),
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
                    child: _logoTitle(),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 16.0, left: 16, top: 180),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: const Text(
                          "Giriş Yap",
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 24),
                      CustomTextField(labelText: "E posta"),
                      SizedBox(height: 16),
                      CustomTextField(
                        labelText: "Şifre",
                        obscureText: true,
                        suffixIcon: Icon(Icons.visibility_off),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: ElevatedButton(
                          onPressed: () {
                            controller.goToMenu();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red[700],
                            minimumSize: Size(
                                double.infinity,
                                MediaQuery.of(context).size.height *
                                    0.07), // Buton yüksekliği ekranın %7'si
                          ),
                          child: Text(
                            'Giriş Yap',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'Poppins'),
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

  Text _logoTitle() {
    return const Text.rich(
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
    );
  }

  Padding _backgroundImageSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          "assets/signin.png",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
