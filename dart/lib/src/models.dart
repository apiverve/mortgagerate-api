/// Response models for the Mortgage Rate API.

/// API Response wrapper.
class MortgagerateResponse {
  final String status;
  final dynamic error;
  final MortgagerateData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  MortgagerateResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory MortgagerateResponse.fromJson(Map<String, dynamic> json) => MortgagerateResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? MortgagerateData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Mortgage Rate API.

class MortgagerateData {
  String? rateType;
  String? name;
  num? term;
  String? type;
  String? country;
  num? year;
  num? count;
  List<MortgagerateDataRatesItem>? rates;
  num? change1w;
  String? changeDirection;
  num? previousRate;
  String? previousDate;
  num? change4w;
  num? change52w;
  num? high52w;
  num? low52w;
  num? average52w;
  List<MortgagerateDataHistoryItem>? history;

  MortgagerateData({
    this.rateType,
    this.name,
    this.term,
    this.type,
    this.country,
    this.year,
    this.count,
    this.rates,
    this.change1w,
    this.changeDirection,
    this.previousRate,
    this.previousDate,
    this.change4w,
    this.change52w,
    this.high52w,
    this.low52w,
    this.average52w,
    this.history,
  });

  factory MortgagerateData.fromJson(Map<String, dynamic> json) => MortgagerateData(
      rateType: json['rateType'],
      name: json['name'],
      term: json['term'],
      type: json['type'],
      country: json['country'],
      year: json['year'],
      count: json['count'],
      rates: (json['rates'] as List?)?.map((e) => MortgagerateDataRatesItem.fromJson(e)).toList(),
      change1w: json['change1w'],
      changeDirection: json['changeDirection'],
      previousRate: json['previousRate'],
      previousDate: json['previousDate'],
      change4w: json['change4w'],
      change52w: json['change52w'],
      high52w: json['high52w'],
      low52w: json['low52w'],
      average52w: json['average52w'],
      history: (json['history'] as List?)?.map((e) => MortgagerateDataHistoryItem.fromJson(e)).toList(),
    );
}

class MortgagerateDataRatesItem {
  String? week;
  num? rate;

  MortgagerateDataRatesItem({
    this.week,
    this.rate,
  });

  factory MortgagerateDataRatesItem.fromJson(Map<String, dynamic> json) => MortgagerateDataRatesItem(
      week: json['week'],
      rate: json['rate'],
    );
}

class MortgagerateDataHistoryItem {
  String? week;
  num? rate;

  MortgagerateDataHistoryItem({
    this.week,
    this.rate,
  });

  factory MortgagerateDataHistoryItem.fromJson(Map<String, dynamic> json) => MortgagerateDataHistoryItem(
      week: json['week'],
      rate: json['rate'],
    );
}

class MortgagerateRequest {
  String type;
  int? year;
  int? month;
  bool? history;
  bool? changes;

  MortgagerateRequest({
    required this.type,
    this.year,
    this.month,
    this.history,
    this.changes,
  });

  Map<String, dynamic> toJson() => {
      'type': type,
      if (year != null) 'year': year,
      if (month != null) 'month': month,
      if (history != null) 'history': history,
      if (changes != null) 'changes': changes,
    };
}
