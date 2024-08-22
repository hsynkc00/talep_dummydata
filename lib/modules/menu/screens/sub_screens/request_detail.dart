import 'package:flutter/material.dart';
import 'package:talep_dummydata/core/core.dart';
import 'package:talep_dummydata/data/models/request_model.dart';

class RequestDetail extends StatelessWidget {
  final Request request;

  const RequestDetail({super.key, required this.request});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text("Talep Detay"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Bu talep ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontStyle: FontStyle.italic),
                  children: <TextSpan>[
                    TextSpan(
                      text: request.requester,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: ' tarafından '),
                    TextSpan(
                      text: request.department,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: ' departmanından '),
                    TextSpan(
                      text: request.creationDate,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: ' tarihinde oluşturulmuştur.'),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Divider(
                color: Colors.grey.shade400,
                thickness: 1.5,
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 1, color: Colors.grey),
                ),
                child: Table(
                  columnWidths: const {
                    0: FlexColumnWidth(4),
                    1: FlexColumnWidth(5),
                    2: FlexColumnWidth(3),
                  },
                  border: TableBorder(
                    horizontalInside: BorderSide(color: Colors.grey.shade200),
                    bottom: BorderSide(color: Colors.grey.shade200),
                  ),
                  children: [
                    TableRow(children: [
                      _buildHeaderCell("Özellik"),
                      _buildHeaderCell("Değer"),
                      _buildHeaderCell(""),
                    ]),
                    _buildTableRow(
                        "Miktar", request.amount.toString(), Colors.black12),
                    _buildTableRow("Birim", request.unit, Colors.white),
                    _buildTableRow(
                        "Stok Kodu", request.stockCode, Colors.black12),
                    _buildTableRow("Stok Adı", request.stockName, Colors.white),
                    _buildTableRow(
                        "Özellik1", request.feature1, Colors.black12),
                    _buildTableRow("Özellik2", request.feature2, Colors.white),
                    _buildTableRow(
                        "Özellik3", request.feature3, Colors.black12),
                    _buildTableRow(
                        "Açıklama", request.description, Colors.white),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TableRow _buildTableRow(String feature, String value, Color color) {
    return TableRow(
      decoration: BoxDecoration(color: color),
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            feature,
            style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            value,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextButton(
            onPressed: () {
              //edit butonunun işlevi buraya eklenecek
            },
            child: const Text(
              "Edit",
              style: TextStyle(fontSize: 12, color: AppColors.primary),
            ),
          ),
        ),
      ],
    );
  }
}

Widget _buildHeaderCell(String text) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  );
}
