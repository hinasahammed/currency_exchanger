import 'package:json_annotation/json_annotation.dart';

part 'sgd.g.dart';

@JsonSerializable()
class Sgd {
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

  Sgd({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Sgd.fromJson(Map<String, dynamic> json) => _$SgdFromJson(json);

  Map<String, dynamic> toJson() => _$SgdToJson(this);
}
