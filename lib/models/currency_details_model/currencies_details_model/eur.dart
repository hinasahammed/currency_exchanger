import 'package:json_annotation/json_annotation.dart';

part 'eur.g.dart';

@JsonSerializable()
class Eur {
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

  Eur({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Eur.fromJson(Map<String, dynamic> json) => _$EurFromJson(json);

  Map<String, dynamic> toJson() => _$EurToJson(this);
}
