import 'package:flutter/material.dart';
import 'package:talep_dummydata/core/core.dart';

class CheckButton extends StatelessWidget {
  final String status;
  final Color color;
  final IconData icon;

  const CheckButton(
      {super.key,
      required this.status,
      required this.color,
      required this.icon});

  const CheckButton.approve({super.key})
      : color = AppColors.approve,
        status = 'Onayla',
        icon = Icons.check;

  const CheckButton.reject({super.key})
      : color = AppColors.reject,
        status = 'Reddet',
        icon = Icons.block;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Container(
        width: 124,
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                status,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
