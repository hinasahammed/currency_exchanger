import 'dart:convert';

import 'package:get/get.dart';
import 'package:global_coin/models/currency_details_model/currencies_details_model/currencies_details_model.dart';
import 'package:global_coin/models/currency_ratio_model/currency_ratio_model.dart';
import 'package:global_coin/repository/currency_conversion_repo.dart';
import 'package:global_coin/res/app_url.dart';
import 'package:global_coin/uitls/utils.dart';
import 'package:http/http.dart' as http;

class CurrencyController extends GetxController {
  Rx<CurrencyRatioModel> ratioModel = CurrencyRatioModel().obs;
  Rx<CurrenciesDetailsModel> detailsModel = CurrenciesDetailsModel().obs;
  RxList<CurrenciesDetailsModel> listCurrenc = <CurrenciesDetailsModel>[].obs;
  final currencyRepo = CurrencyConversionRepo();
  String baseUrl = AppUrl.baseUrl;
  String latestUrl = AppUrl.latestUrl;
  String currencyUrl = AppUrl.currenciesUrl;

  void fetchCurrencyRatio() async {
    // CurrencyRatioModel model = CurrencyRatioModel();
    try {
      final response = await http.get(Uri.parse(baseUrl + latestUrl));
      if (response.statusCode == 200) {
        print(response.body);
        var data = jsonDecode(response.body);
        ratioModel.value = CurrencyRatioModel.fromJson(data);
        // return model;
      } else {
        Utils().showToast(response.statusCode.toString());
      }
    } catch (e) {
      Utils().showToast(e.toString());
    }
    // return model;
  }

  Future<CurrenciesDetailsModel> fetchCurrencyDetails() async {
    // CurrencyRatioModel model = CurrencyRatioModel();

    try {
      final response = await http.get(Uri.parse(baseUrl + currencyUrl));
      var data = jsonDecode(response.body.toString());

      if (response.statusCode == 200) {
        print(response.body);
        return CurrenciesDetailsModel.fromJson(data);
        // return model;
      } else {
        Utils().showToast(response.statusCode.toString());
      }
    } catch (e) {
      Utils().showToast(e.toString());
    }
    return CurrenciesDetailsModel();

    // return model;
  }

}