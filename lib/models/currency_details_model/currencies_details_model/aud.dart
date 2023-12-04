import 'package:json_annotation/json_annotation.dart';

part 'aud.g.dart';

@JsonSerializable()
class Aud {
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

  Aud({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Aud.fromJson(Map<String, dynamic> json) => _$AudFromJson(json);

  Map<String, dynamic> toJson() => _$AudToJson(this);
}
