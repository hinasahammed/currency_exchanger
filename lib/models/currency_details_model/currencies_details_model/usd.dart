import 'package:json_annotation/json_annotation.dart';

part 'usd.g.dart';

@JsonSerializable()
class Usd {
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

  Usd({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Usd.fromJson(Map<String, dynamic> json) => _$UsdFromJson(json);

  Map<String, dynamic> toJson() => _$UsdToJson(this);
}
