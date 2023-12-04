import 'package:json_annotation/json_annotation.dart';

part 'brl.g.dart';

@JsonSerializable()
class Brl {
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

  Brl({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Brl.fromJson(Map<String, dynamic> json) => _$BrlFromJson(json);

  Map<String, dynamic> toJson() => _$BrlToJson(this);
}
