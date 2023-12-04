import 'package:json_annotation/json_annotation.dart';

part 'nok.g.dart';

@JsonSerializable()
class Nok {
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

  Nok({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Nok.fromJson(Map<String, dynamic> json) => _$NokFromJson(json);

  Map<String, dynamic> toJson() => _$NokToJson(this);
}
