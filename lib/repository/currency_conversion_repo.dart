import 'dart:convert';

import 'package:get/get.dart';
import 'package:global_coin/models/currency_model.dart';
import 'package:global_coin/res/app_url.dart';
import 'package:global_coin/viewModel/currency_controller.dart';
import 'package:http/http.dart' as http;

final currencyController = Get.put(CurrencyController());

class CurrencyConversionRepo {
  String baseUrl = AppUrl.baseUrl;
  String latestUrl = AppUrl.latestUrl;

  Future fetchCurrencyData() async {
    final response = await http.get(Uri.parse(baseUrl + latestUrl));

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final data = jsonResponse['data'];

      for (String currencyCode in data?.keys ?? []) {
        currencyController.currencies.add(Currency(
          currencyCode: currencyCode,
          rate: data[currencyCode].toDouble(),
        ));
      }
    } else {
      throw Exception('Failed to load currencies');
    }
  }
}
