import 'package:json_annotation/json_annotation.dart';

part 'jpy.g.dart';

@JsonSerializable()
class Jpy {
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

  Jpy({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Jpy.fromJson(Map<String, dynamic> json) => _$JpyFromJson(json);

  Map<String, dynamic> toJson() => _$JpyToJson(this);
}
