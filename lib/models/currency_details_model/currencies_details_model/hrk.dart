import 'package:json_annotation/json_annotation.dart';

part 'hrk.g.dart';

@JsonSerializable()
class Hrk {
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

  Hrk({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Hrk.fromJson(Map<String, dynamic> json) => _$HrkFromJson(json);

  Map<String, dynamic> toJson() => _$HrkToJson(this);
}
