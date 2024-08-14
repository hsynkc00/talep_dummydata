import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/core.dart';
import '../widgets/card.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: Text("Anasayfa")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildCard(
              color: AppColors.menuBlue,
              secondaryColor: AppColors.menuDarkBlue,
              title: 'GELEN',
              count: '0',
              description: 'Tüm Gelen Talepleriniz',
              icon: Icons.incomplete_circle_outlined,
              onTap: () {},
            ),
            buildCard(
              color: AppColors.menuYellow,
              secondaryColor: AppColors.menuDarkYellow,
              title: 'CEVAP BEKLEYEN',
              count: '3',
              description: 'Tüm Cevap Bekleyen Talepleriniz',
              icon: Icons.hourglass_empty,
              onTap: () {
                Get.toNamed('pendingRequest');
              },
            ),
            buildCard(
              color: AppColors.menuGreen,
              secondaryColor: AppColors.menuDarkGreen,
              title: 'ONAYLANAN',
              count: '2',
              description: 'Tüm Onaylanan Talepleriniz',
              icon: Icons.check_circle_outline,
              onTap: () {},
            ),
            buildCard(
              color: AppColors.menuRed,
              secondaryColor: AppColors.menuDarkRed,
              title: 'REDDEDİLEN',
              count: '1',
              description: 'Tüm Reddedilen Talepleriniz',
              icon: Icons.cancel,
              onTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
