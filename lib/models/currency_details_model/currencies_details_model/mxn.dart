import 'package:json_annotation/json_annotation.dart';

part 'mxn.g.dart';

@JsonSerializable()
class Mxn {
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

  Mxn({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Mxn.fromJson(Map<String, dynamic> json) => _$MxnFromJson(json);

  Map<String, dynamic> toJson() => _$MxnToJson(this);
}
