import 'package:json_annotation/json_annotation.dart';

part 'pln.g.dart';

@JsonSerializable()
class Pln {
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

  Pln({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Pln.fromJson(Map<String, dynamic> json) => _$PlnFromJson(json);

  Map<String, dynamic> toJson() => _$PlnToJson(this);
}
