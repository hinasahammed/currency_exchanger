import 'package:json_annotation/json_annotation.dart';

part 'idr.g.dart';

@JsonSerializable()
class Idr {
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

  Idr({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Idr.fromJson(Map<String, dynamic> json) => _$IdrFromJson(json);

  Map<String, dynamic> toJson() => _$IdrToJson(this);
}
