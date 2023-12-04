// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_ratio_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrencyRatioModel _$CurrencyRatioModelFromJson(Map<String, dynamic> json) =>
    CurrencyRatioModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CurrencyRatioModelToJson(CurrencyRatioModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
