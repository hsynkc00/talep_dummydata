import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../data/models/request_model.dart';
import '../../../request/controller.dart';
import '../../widgets/request_card.dart';

class PendingRequestsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final RequestController requestController = Get.find<RequestController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Cevap Bekleyen Talepler'),
      ),
      body: Obx(() {
        final pendingRequests = requestController.requests
            .where((request) => request.status == 'pending')
            .toList();

        if (pendingRequests.isEmpty) {
          return Center(child: Text('Cevap bekleyen talep yok.'));
        }

        return ListView.builder(
          itemCount: pendingRequests.length,
          itemBuilder: (context, index) {
            final Request request = pendingRequests[index];
            return RequestCard(
                request: request);
          },
        );
      }),
    );
  }
}
