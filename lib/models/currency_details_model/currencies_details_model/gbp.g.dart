// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gbp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Gbp _$GbpFromJson(Map<String, dynamic> json) => Gbp(
      symbol: json['symbol'] as String?,
      name: json['name'] as String?,
      symbolNative: json['symbol_native'] as String?,
      decimalDigits: json['decimal_digits'] as int?,
      rounding: json['rounding'] as int?,
      code: json['code'] as String?,
      namePlural: json['name_plural'] as String?,
    );

Map<String, dynamic> _$GbpToJson(Gbp instance) => <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'symbol_native': instance.symbolNative,
      'decimal_digits': instance.decimalDigits,
      'rounding': instance.rounding,
      'code': instance.code,
      'name_plural': instance.namePlural,
    };
