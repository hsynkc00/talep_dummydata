import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final Icon? suffixIcon;
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.labelText,
    this.obscureText = false,
    this.suffixIcon,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      controller: controller,
      cursorColor: Colors.lime[800],
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.lime[800]!), // Odaklandığında çizgi rengi
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.grey[300]!), // Odaklanmadan önce çizgi rengi
          borderRadius: BorderRadius.circular(12),
        ),
        floatingLabelStyle: TextStyle(color: Colors.lime[800]),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
