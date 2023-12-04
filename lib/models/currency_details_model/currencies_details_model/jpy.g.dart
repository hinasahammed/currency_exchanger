// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jpy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Jpy _$JpyFromJson(Map<String, dynamic> json) => Jpy(
      symbol: json['symbol'] as String?,
      name: json['name'] as String?,
      symbolNative: json['symbol_native'] as String?,
      decimalDigits: json['decimal_digits'] as int?,
      rounding: json['rounding'] as int?,
      code: json['code'] as String?,
      namePlural: json['name_plural'] as String?,
    );

Map<String, dynamic> _$JpyToJson(Jpy instance) => <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'symbol_native': instance.symbolNative,
      'decimal_digits': instance.decimalDigits,
      'rounding': instance.rounding,
      'code': instance.code,
      'name_plural': instance.namePlural,
    };
