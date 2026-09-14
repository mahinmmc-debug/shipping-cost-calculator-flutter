class Carrier {
  final String id;
  final String name;
  final String effective;
  final Map<String, Category> categories;
  final LocalCharges? local;
  final List<ExtraCharge>? extras;

  Carrier({
    required this.id,
    required this.name,
    required this.effective,
    required this.categories,
    this.local,
    this.extras,
  });

  factory Carrier.fromJson(Map<String, dynamic> json) {
    return Carrier(
      id: json['id'],
      name: json['name'],
      effective: json['effective'] ?? '',
      categories: (json['categories'] as Map<String, dynamic>)
          .map((key, value) => MapEntry(key, Category.fromJson(value))),
      local: json['local'] != null ? LocalCharges.fromJson(json['local']) : null,
      extras: json['extras'] != null
          ? (json['extras'] as List).map((e) => ExtraCharge.fromJson(e)).toList()
          : null,
    );
  }
}

class Category {
  final int free;
  final String currency;
  final Map<String, List<List<dynamic>>> sizes;
  final bool? isFlat;
  final String? note;

  Category({
    required this.free,
    required this.currency,
    required this.sizes,
    this.isFlat,
    this.note,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      free: json['free'],
      currency: json['currency'],
      sizes: (json['sizes'] as Map<String, dynamic>)
          .map((key, value) => MapEntry(
              key,
              (value as List)
                  .map((e) => List<dynamic>.from(e as List))
                  .toList())),
      isFlat: json['isFlat'],
      note: json['note'],
    );
  }
}

class LocalCharges {
  final ChargeDetail? cleaning;
  final ChargeDetail? documentation;

  LocalCharges({this.cleaning, this.documentation});

  factory LocalCharges.fromJson(Map<String, dynamic> json) {
    return LocalCharges(
      cleaning: json['cleaning'] != null ? ChargeDetail.fromJson(json['cleaning']) : null,
      documentation: json['documentation'] != null
          ? ChargeDetail.fromJson(json['documentation'])
          : null,
    );
  }
}

class ChargeDetail {
  final double rate;
  final String cur;

  ChargeDetail({required this.rate, required this.cur});

  factory ChargeDetail.fromJson(Map<String, dynamic> json) {
    return ChargeDetail(
      rate: (json['rate'] as num).toDouble(),
      cur: json['cur'],
    );
  }
}

class ExtraCharge {
  final String id;
  final String label;
  final String? small;
  final String cur;
  final String per;
  final String appliesTo;
  final dynamic rate;

  ExtraCharge({
    required this.id,
    required this.label,
    this.small,
    required this.cur,
    required this.per,
    required this.appliesTo,
    required this.rate,
  });

  factory ExtraCharge.fromJson(Map<String, dynamic> json) {
    return ExtraCharge(
      id: json['id'],
      label: json['label'],
      small: json['small'],
      cur: json['cur'],
      per: json['per'],
      appliesTo: json['appliesTo'],
      rate: json['rate'],
    );
  }

  double getRate(String size) {
    if (rate is double || rate is int) {
      return (rate as num).toDouble();
    } else if (rate is Map) {
      return ((rate as Map)[size] ?? (rate as Map).values.first as num).toDouble();
    }
    return 0.0;
  }
}
