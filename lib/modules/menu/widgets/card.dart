import 'package:flutter/material.dart';

Card buildCard(
    {required Color color,
    required Color secondaryColor,
    required String title,
    required String count,
    required String description,
    required IconData icon}) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    color: color,
    elevation: 2,
    child: Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        top: 16,
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
  );
}


// Container(
//       width: double.infinity,
//       height: 120,
//       decoration: BoxDecoration(
//         color: Colors.blue[300],
//         borderRadius: BorderRadius.circular(16),
//       ),
//       child: Row(
//         children: [
//           Container(
//             width: 80,
//             decoration: BoxDecoration(
//               color: Colors.blue[800],
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(16),
//                 bottomLeft: Radius.circular(16),
//               ),
//             ),
//             child: Center(
//               child: CircleAvatar(
//                 radius: 24,
//                 backgroundColor: Colors.white,
//                 child: Icon(
//                   Icons.check_circle_outline,
//                   color: Colors.blue[800],
//                   size: 32,
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'GELEN',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     '0',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 36,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Text(
//                     'Tüm Gelen Talepleriniz',
//                     style: TextStyle(
//                       color: Colors.white70,
//                       fontSize: 14,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 16.0),
//             child: CircleAvatar(
//               radius: 20,
//               backgroundColor: Colors.blue[800],
//               child: Icon(
//                 Icons.arrow_forward,
//                 color: Colors.white,
//                 size: 20,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );