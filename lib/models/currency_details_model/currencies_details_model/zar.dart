import 'package:json_annotation/json_annotation.dart';

part 'zar.g.dart';

@JsonSerializable()
class Zar {
  String? symbol;
  String? name;
  @JsonKey(name: 'symbol_native')
  String? symbolNative;
  @JsonKey(name: 'decimal_digits')
  int? decimalDigits;
  int? rounding;
  String? code;
  @JsonKey(name: 'name_plural')
  String? namePlural;

  Zar({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Zar.fromJson(Map<String, dynamic> json) => _$ZarFromJson(json);

  Map<String, dynamic> toJson() => _$ZarToJson(this);
}
