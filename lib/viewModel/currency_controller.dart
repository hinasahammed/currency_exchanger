import 'dart:convert';

import 'package:get/get.dart';
import 'package:global_coin/models/currency_model.dart';
import 'package:global_coin/res/app_url.dart';
import 'package:http/http.dart' as http;

class CurrencyController extends GetxController {
  String baseUrl = AppUrl.baseUrl;
  String latestUrl = AppUrl.latestUrl;
  String currencyUrl = AppUrl.currenciesUrl;
  RxList<Currency> currencies = <Currency>[].obs;

  Future<List<Currency>> fetchCurrencyData() async {
    final response = await http.get(Uri.parse(baseUrl + latestUrl));

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final data = jsonResponse['data'];

      for (String currencyCode in data?.keys ?? []) {
        currencies.add(Currency(
          currencyCode: currencyCode,
          rate: data[currencyCode].toDouble(),
        ));
      }

      return currencies;
    } else {
      throw Exception('Failed to load currencies');
    }
  }
}
