import 'package:json_annotation/json_annotation.dart';

part 'dkk.g.dart';

@JsonSerializable()
class Dkk {
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

  Dkk({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Dkk.fromJson(Map<String, dynamic> json) => _$DkkFromJson(json);

  Map<String, dynamic> toJson() => _$DkkToJson(this);
}
