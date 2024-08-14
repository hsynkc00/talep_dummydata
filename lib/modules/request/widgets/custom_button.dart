import 'package:flutter/material.dart';

import '../../../core/core.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap});

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160,
        height: 48,
        decoration: BoxDecoration(
            color: AppColors.primary, borderRadius: BorderRadius.circular(4)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.send,
              color: Colors.white,
            ),
            Text(
              "Tamamla",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
