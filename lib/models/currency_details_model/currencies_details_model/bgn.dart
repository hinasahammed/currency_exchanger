import 'package:json_annotation/json_annotation.dart';

part 'bgn.g.dart';

@JsonSerializable()
class Bgn {
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

  Bgn({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Bgn.fromJson(Map<String, dynamic> json) => _$BgnFromJson(json);

  Map<String, dynamic> toJson() => _$BgnToJson(this);
}
