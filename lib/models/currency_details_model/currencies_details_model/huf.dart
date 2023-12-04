import 'package:json_annotation/json_annotation.dart';

part 'huf.g.dart';

@JsonSerializable()
class Huf {
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

  Huf({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Huf.fromJson(Map<String, dynamic> json) => _$HufFromJson(json);

  Map<String, dynamic> toJson() => _$HufToJson(this);
}
