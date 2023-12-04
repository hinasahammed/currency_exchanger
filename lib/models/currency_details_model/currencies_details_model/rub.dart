import 'package:json_annotation/json_annotation.dart';

part 'rub.g.dart';

@JsonSerializable()
class Rub {
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

  Rub({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Rub.fromJson(Map<String, dynamic> json) => _$RubFromJson(json);

  Map<String, dynamic> toJson() => _$RubToJson(this);
}
