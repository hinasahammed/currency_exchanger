
class Currency {
  final String currencyCode;
  final double rate;

  Currency({required this.currencyCode, required this.rate});

  factory Currency.fromJson(Map<String, dynamic> json) {
    return Currency(
      currencyCode: json['currencyCode'],
      rate: json['rate'],
    );
  }
}