class Request {
  final String id;
  final String requester;
  final String department;
  final String creationDate;
  final String status;
  final int amount;
  final String unit;
  final String stockCode;
  final String stockName;
  final String feature1;
  final String feature2;
  final String feature3;
  final String description;
  final String userId;

  Request(
      {required this.id,
      required this.requester,
      required this.department,
      required this.creationDate,
      required this.status,
      required this.amount,
      required this.unit,
      required this.stockCode,
      required this.stockName,
      required this.feature1,
      required this.feature2,
      required this.feature3,
      required this.description,
      required this.userId});

  //JSON to Object
  factory Request.fromJson(Map<String, dynamic> json) {
    return Request(
        id: json['id'],
        requester: json['requester'],
        department: json['department'],
        creationDate: json['creationDate'],
        status: json['status'],
        amount: json['amount'],
        unit: json['unit'],
        stockCode: json['stockCode'],
        stockName: json['stockName'],
        feature1: json['feature1'],
        feature2: json['feature2'],
        feature3: json['feature3'],
        description: json['description'],
        userId: json['userId']);
  }

  //Object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'requester': requester,
      'department': department,
      'creationDate': creationDate,
      'status': status,
      'amount': amount,
      'unit': unit,
      'stockCode': stockCode,
      'stockName': stockName,
      'feature1': feature1,
      'feature2': feature2,
      'feature3': feature3,
      'description': description,
      'userId': userId
    };
  }
}
