import 'package:json_annotation/json_annotation.dart';

part 'chf.g.dart';

@JsonSerializable()
class Chf {
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

  Chf({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Chf.fromJson(Map<String, dynamic> json) => _$ChfFromJson(json);

  Map<String, dynamic> toJson() => _$ChfToJson(this);
}
