import 'package:json_annotation/json_annotation.dart';

part 'gbp.g.dart';

@JsonSerializable()
class Gbp {
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

  Gbp({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Gbp.fromJson(Map<String, dynamic> json) => _$GbpFromJson(json);

  Map<String, dynamic> toJson() => _$GbpToJson(this);
}
