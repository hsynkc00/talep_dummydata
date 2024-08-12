import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    required super.title,
    super.centerTitle = true,
    super.toolbarHeight = 80,
    super.actions = const [
      IconButton(
          onPressed: null,
          padding: EdgeInsets.all(16),
          iconSize: 40,
          icon: Icon(
            Icons.account_circle_rounded,
            color: Colors.black54,
          ))
    ],
  });
}

