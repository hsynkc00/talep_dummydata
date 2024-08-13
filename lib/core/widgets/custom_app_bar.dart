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
          iconSize: 32,
          icon: Icon(
            Icons.settings_outlined,
            color: Colors.black38,
          ))
    ],
  });
}
