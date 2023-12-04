import 'package:json_annotation/json_annotation.dart';

part 'php.g.dart';

@JsonSerializable()
class Php {
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

  Php({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Php.fromJson(Map<String, dynamic> json) => _$PhpFromJson(json);

  Map<String, dynamic> toJson() => _$PhpToJson(this);
}
