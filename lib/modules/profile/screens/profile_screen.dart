// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:talep_dummydata/core/core.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: Text("Profil")),
      body: Center(
        child: Text("Profile Screen"),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
