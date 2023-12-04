import 'package:json_annotation/json_annotation.dart';

part 'cny.g.dart';

@JsonSerializable()
class Cny {
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

  Cny({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Cny.fromJson(Map<String, dynamic> json) => _$CnyFromJson(json);

  Map<String, dynamic> toJson() => _$CnyToJson(this);
}
