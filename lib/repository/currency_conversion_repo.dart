import 'dart:convert';

import 'package:global_coin/models/currency_ratio_model/currency_ratio_model.dart';
import 'package:global_coin/res/app_url.dart';
import 'package:global_coin/uitls/utils.dart';
import 'package:http/http.dart' as http;

class CurrencyConversionRepo {
  String baseUrl = AppUrl.baseUrl;
  String latestUrl = AppUrl.latestUrl;
}
