import 'package:json_annotation/json_annotation.dart';

part 'czk.g.dart';

@JsonSerializable()
class Czk {
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

  Czk({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Czk.fromJson(Map<String, dynamic> json) => _$CzkFromJson(json);

  Map<String, dynamic> toJson() => _$CzkToJson(this);
}
