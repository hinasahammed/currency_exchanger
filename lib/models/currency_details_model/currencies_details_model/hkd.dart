import 'package:json_annotation/json_annotation.dart';

part 'hkd.g.dart';

@JsonSerializable()
class Hkd {
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

  Hkd({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Hkd.fromJson(Map<String, dynamic> json) => _$HkdFromJson(json);

  Map<String, dynamic> toJson() => _$HkdToJson(this);
}
