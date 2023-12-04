import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'currencies_details_model.g.dart';

@JsonSerializable()
class CurrenciesDetailsModel {
  Data? data;

  CurrenciesDetailsModel({this.data});

  factory CurrenciesDetailsModel.fromJson(Map<String, dynamic> json) {
    return _$CurrenciesDetailsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CurrenciesDetailsModelToJson(this);
}
