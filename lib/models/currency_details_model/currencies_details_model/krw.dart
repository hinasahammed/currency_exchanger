import 'package:json_annotation/json_annotation.dart';

part 'krw.g.dart';

@JsonSerializable()
class Krw {
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

  Krw({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Krw.fromJson(Map<String, dynamic> json) => _$KrwFromJson(json);

  Map<String, dynamic> toJson() => _$KrwToJson(this);
}
