import 'package:json_annotation/json_annotation.dart';

part 'sek.g.dart';

@JsonSerializable()
class Sek {
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

  Sek({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Sek.fromJson(Map<String, dynamic> json) => _$SekFromJson(json);

  Map<String, dynamic> toJson() => _$SekToJson(this);
}
