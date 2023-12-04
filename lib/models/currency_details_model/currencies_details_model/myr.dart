import 'package:json_annotation/json_annotation.dart';

part 'myr.g.dart';

@JsonSerializable()
class Myr {
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

  Myr({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Myr.fromJson(Map<String, dynamic> json) => _$MyrFromJson(json);

  Map<String, dynamic> toJson() => _$MyrToJson(this);
}
