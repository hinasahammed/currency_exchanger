import 'package:json_annotation/json_annotation.dart';

part 'cad.g.dart';

@JsonSerializable()
class Cad {
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

  Cad({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Cad.fromJson(Map<String, dynamic> json) => _$CadFromJson(json);

  Map<String, dynamic> toJson() => _$CadToJson(this);
}
