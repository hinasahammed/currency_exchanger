import 'package:json_annotation/json_annotation.dart';

part 'ils.g.dart';

@JsonSerializable()
class Ils {
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

  Ils({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Ils.fromJson(Map<String, dynamic> json) => _$IlsFromJson(json);

  Map<String, dynamic> toJson() => _$IlsToJson(this);
}
