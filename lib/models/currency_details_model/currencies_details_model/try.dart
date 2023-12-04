import 'package:json_annotation/json_annotation.dart';

part 'try.g.dart';

@JsonSerializable()
class Try {
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

  Try({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  factory Try.fromJson(Map<String, dynamic> json) => _$TryFromJson(json);

  Map<String, dynamic> toJson() => _$TryToJson(this);
}
