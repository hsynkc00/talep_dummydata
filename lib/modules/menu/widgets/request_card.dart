import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/models/request_model.dart';

class RequestCard extends StatelessWidget {
  final Request request;

  const RequestCard({super.key, required this.request});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed('/requestDetail',arguments: request),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  const BoxShadow(
                    color: Color(0XFFFF7700),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 1),
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
              ),
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
                              "Talep Eden",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Text(request.requester),
                          ],
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Stok Adı",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                            Text(request.stockName),
                          ],
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Departman",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                            Text(request.department),
                          ],
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Oluşturma Tarihi",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                            Text(request.creationDate),
                          ],
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Durum",
                                style: TextStyle(fontWeight: FontWeight.w600)),
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
                                  SizedBox(
                                      width:
                                          4), // İkon ile metin arasında biraz boşluk ekleyin
                                  Text(
                                    "Cevap Bekleyen",
                                    style: TextStyle(
                                        color: Color(
                                          0XFFFF7700,
                                        ),
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
