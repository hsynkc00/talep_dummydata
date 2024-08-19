import 'package:flutter/material.dart';
import 'package:talep_dummydata/core/core.dart';

class MenuItem extends StatelessWidget {
  final Color color;
  final Color secondaryColor;
  final String title;
  final String count;
  final String description;
  final IconData icon;
  final VoidCallback onTap;

  const MenuItem(
      {super.key,
      required this.color,
      required this.secondaryColor,
      required this.title,
      required this.count,
      required this.description,
      required this.icon,
      required this.onTap});

  const MenuItem.incoming({
    super.key,
    required this.onTap,
    required this.count,
  })  : color = AppColors.menuBlue,
        secondaryColor = AppColors.menuDarkBlue,
        title = "GELEN",
        description = "Tüm Gelen Talepleriniz",
        icon = Icons.incomplete_circle_outlined;

  const MenuItem.pending({
    super.key,
    required this.onTap,
    required this.count,
  })  : color = AppColors.menuYellow,
        secondaryColor = AppColors.menuDarkYellow,
        title = "CEVAP BEKLEYEN",
        description = "Tüm Cevap Bekleyen Talepleriniz",
        icon = Icons.hourglass_empty;

  const MenuItem.success({
    super.key,
    required this.onTap,
    required this.count,
  })  : color = AppColors.menuGreen,
        secondaryColor = AppColors.menuDarkGreen,
        title = "ONAYLANAN",
        description = "Tüm Onaylanan Talepleriniz",
        icon = Icons.check_circle_outline;

  const MenuItem.reject({
    super.key,
    required this.onTap,
    required this.count,
  })  : color = AppColors.menuRed,
        secondaryColor = AppColors.menuDarkRed,
        title = "REDDEDİLEN",
        description = "Tüm Reddedilen Talepleriniz",
        icon = Icons.cancel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: color,
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            top: 16.0,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(8))),
                    height: 125,
                    width: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Icon(icon, color: Colors.white, size: 32),
                        ),
                      ],
                    )),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      count,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      description,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 70.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        bottomLeft: Radius.circular(4),
                      )),
                  width: 48,
                  child: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
