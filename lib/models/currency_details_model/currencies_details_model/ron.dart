import 'package:json_annotation/json_annotation.dart';

part 'ron.g.dart';

@JsonSerializable()
class Ron {
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

  Ron({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Ron.fromJson(Map<String, dynamic> json) => _$RonFromJson(json);

  Map<String, dynamic> toJson() => _$RonToJson(this);
}
