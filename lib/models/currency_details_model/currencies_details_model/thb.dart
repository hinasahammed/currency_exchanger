import 'package:json_annotation/json_annotation.dart';

part 'thb.g.dart';

@JsonSerializable()
class Thb {
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

  Thb({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Thb.fromJson(Map<String, dynamic> json) => _$ThbFromJson(json);

  Map<String, dynamic> toJson() => _$ThbToJson(this);
}
