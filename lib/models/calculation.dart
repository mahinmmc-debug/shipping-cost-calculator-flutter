class Calculation {
  final String id;
  final String line;
  final String category;
  final String size;
  final int containers;
  final int blCount;
  final int totalDays;
  final int customFree;
  final double exRate;
  final List<CalculationItem> items;
  final double totalUsd;
  final double totalTk;
  final double grandTotal;
  final DateTime timestamp;

  Calculation({
    required this.id,
    required this.line,
    required this.category,
    required this.size,
    required this.containers,
    required this.blCount,
    required this.totalDays,
    required this.customFree,
    required this.exRate,
    required this.items,
    required this.totalUsd,
    required this.totalTk,
    required this.grandTotal,
    required this.timestamp,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'line': line,
      'category': category,
      'size': size,
      'containers': containers,
      'blCount': blCount,
      'totalDays': totalDays,
      'customFree': customFree,
      'exRate': exRate,
      'items': items.map((e) => e.toJson()).toList(),
      'totalUsd': totalUsd,
      'totalTk': totalTk,
      'grandTotal': grandTotal,
      'timestamp': timestamp.toIso8601String(),
    };
  }

  factory Calculation.fromJson(Map<String, dynamic> json) {
    return Calculation(
      id: json['id'],
      line: json['line'],
      category: json['category'],
      size: json['size'],
      containers: json['containers'],
      blCount: json['blCount'],
      totalDays: json['totalDays'],
      customFree: json['customFree'],
      exRate: (json['exRate'] as num).toDouble(),
      items: (json['items'] as List)
          .map((e) => CalculationItem.fromJson(e))
          .toList(),
      totalUsd: (json['totalUsd'] as num).toDouble(),
      totalTk: (json['totalTk'] as num).toDouble(),
      grandTotal: (json['grandTotal'] as num).toDouble(),
      timestamp: DateTime.parse(json['timestamp']),
    );
  }
}

class CalculationItem {
  final String label;
  final String qty;
  final String currency;
  final double amount;

  CalculationItem({
    required this.label,
    required this.qty,
    required this.currency,
    required this.amount,
  });

  Map<String, dynamic> toJson() {
    return {
      'label': label,
      'qty': qty,
      'currency': currency,
      'amount': amount,
    };
  }

  factory CalculationItem.fromJson(Map<String, dynamic> json) {
    return CalculationItem(
      label: json['label'],
      qty: json['qty'],
      currency: json['currency'],
      amount: (json['amount'] as num).toDouble(),
    );
  }
}
