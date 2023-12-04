import 'package:json_annotation/json_annotation.dart';

part 'inr.g.dart';

@JsonSerializable()
class Inr {
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

  Inr({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Inr.fromJson(Map<String, dynamic> json) => _$InrFromJson(json);

  Map<String, dynamic> toJson() => _$InrToJson(this);
}
