import 'package:flutter/material.dart';
import 'package:talep_dummydata/core/core.dart';

class RequestTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool isPassword;
  final int? maxLines;

  RequestTextField({
    required this.labelText,
    required this.hintText,
    this.isPassword = false,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8),
          TextField(
            obscureText: isPassword,
            maxLines: maxLines,
            cursorColor: AppColors.primary,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.black12),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide.none,
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            ),
          ),
        ],
      ),
    );
  }
}
