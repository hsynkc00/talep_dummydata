// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:talep_dummydata/core/core.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: Text("Profil")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Color(0XFFFF7700),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 1)
                      )],
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Table(
                    children: [
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Talep Dolduran",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Text("Hüseyin Koç"),
                            ],
                          ),
                        )
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Stok Adı",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w600)),
                              Text("Kablo"),
                            ],
                          ),
                        )
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Departman",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w600)),
                              Text("Bilgi İşlem"),
                            ],
                          ),
                        )
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Oluşturma Tarihi",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w600)),
                              Text("07/08/2024"),
                            ],
                          ),
                        )
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Durum",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w600)),
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0XFFFF7700).withOpacity(0.48),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.hourglass_empty_rounded,
                                        color: Color(0XFFFF7700)),
                                    Text(
                                      "Cevap Bekleyen",
                                      style: TextStyle(
                                          color: Color(
                                            0XFFFF7700,
                                          ),
                                          fontSize: 12),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ])
                    ],
                  ),
                )),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
