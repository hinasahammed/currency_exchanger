import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'currency_ratio_model.g.dart';

@JsonSerializable()
class CurrencyRatioModel {
  Data? data;

  CurrencyRatioModel({this.data});

  factory CurrencyRatioModel.fromJson(Map<String, dynamic> json) {
    return _$CurrencyRatioModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CurrencyRatioModelToJson(this);
}
