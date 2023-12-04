import 'package:json_annotation/json_annotation.dart';

part 'nzd.g.dart';

@JsonSerializable()
class Nzd {
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

  Nzd({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Nzd.fromJson(Map<String, dynamic> json) => _$NzdFromJson(json);

  Map<String, dynamic> toJson() => _$NzdToJson(this);
}
