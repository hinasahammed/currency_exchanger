import 'package:get/get.dart';
import 'package:global_coin/models/currency_model.dart';
import 'package:global_coin/repository/currency_conversion_repo.dart';
import 'package:global_coin/res/app_url.dart';
import 'package:global_coin/viewModel/currency_type_controller.dart';

class CurrencyController extends GetxController {
  String baseUrl = AppUrl.baseUrl;
  String latestUrl = AppUrl.latestUrl;
  String currencyUrl = AppUrl.currenciesUrl;
  RxList<Currency> currencies = <Currency>[].obs;
  final repo = CurrencyConversionRepo();
  final typeController = Get.put(CurrencyTypeController());

//fetching data
  void fetchData() {
    repo.fetchCurrencyData();
  }

//Converting function from usd to any
  void convertNormal() {
    List<Currency> matchingItems = currencies
        .where((item) => item.currencyCode == typeController.toType.value)
        .toList();

    if (matchingItems.isNotEmpty) {
      Currency result = matchingItems.first;
      typeController.result.value =
          (int.parse(typeController.textfield.value.text) * result.rate)
              .toStringAsFixed(2);
    }
  }

//Converting function from any to any
  void convertAnyToAny() {
    Currency? result;
    Currency? secondresult;
    List<Currency> firstItems = currencies
        .where((item) => item.currencyCode == typeController.type.value)
        .toList();
    if (firstItems.isNotEmpty) {
      result = firstItems.first;
      // typeController.result.value =
      //     (int.parse(typeController.textfield.value.text) * result.rate)
      //         .toStringAsFixed(2);
    }
    List<Currency> secondItems = currencies
        .where((item) => item.currencyCode == typeController.toType.value)
        .toList();

    if (secondItems.isNotEmpty) {
      secondresult = secondItems.first;
    }

    typeController.result.value =
        (int.parse(typeController.textfield.value.text) /
                result!.rate *
                secondresult!.rate)
            .toStringAsFixed(2);
  }
}
