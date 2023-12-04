import 'package:json_annotation/json_annotation.dart';

part 'isk.g.dart';

@JsonSerializable()
class Isk {
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

  Isk({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Isk.fromJson(Map<String, dynamic> json) => _$IskFromJson(json);

  Map<String, dynamic> toJson() => _$IskToJson(this);
}
