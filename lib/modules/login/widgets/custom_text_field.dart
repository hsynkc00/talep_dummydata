import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final Icon? suffixIcon;

  CustomTextField({
    required this.labelText,
    this.obscureText = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
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
