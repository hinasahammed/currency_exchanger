// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currencies_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrenciesDetailsModel _$CurrenciesDetailsModelFromJson(
        Map<String, dynamic> json) =>
    CurrenciesDetailsModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CurrenciesDetailsModelToJson(
        CurrenciesDetailsModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
