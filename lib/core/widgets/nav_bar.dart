// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:talep_dummydata/core/core.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: AppColors.primary),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_to_photos_rounded, color: AppColors.primary),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: AppColors.primary),
          label: '',
        ),
      ],
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: 30,
    );
  }
}


// SizedBox(
//         height: 80,
//         child: BottomNavigationBar(
//           iconSize: 24,
//           backgroundColor: Colors.white,
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: "Home",
//             ),
//             BottomNavigationBarItem(
//                 icon: Container(
//                     height: 40,
//                     width: 40,
//                     decoration: BoxDecoration(
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.5),
//                         ),
//                       ],
//                       border: Border.all(
//                         width: 2,
//                         color: Color(0xffd50f0f),
//                       ),
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Icon(Icons.add)),
//                 label: "Add Request"),
//             BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
//           ],
//           selectedItemColor: Colors.red[700],
//         ),
//       ),



// NavigationBarTheme(
//           data: NavigationBarThemeData(
//             indicatorColor: Colors.white54,
//           ),
//           child: NavigationBar(
//               backgroundColor: Colors.white,
//               selectedIndex: 1,
//               destinations: [
//                 NavigationDestination(
//                   icon: Icon(
//                     Icons.home,
//                     color: Colors.red[800],
//                   ),
//                   label: "Home",
//                 ),
//                 NavigationDestination(
//                   icon: Icon(
//                     Icons.add_to_photos_rounded,
//                     color: Colors.red[800],
//                   ),
//                   label: "Add Request",
//                 ),
//                 NavigationDestination(
//                   icon: Icon(
//                     Icons.person,
//                     color: Colors.red[800],
//                   ),
//                   label: "Profile",
//                 )
//               ]),
//         )