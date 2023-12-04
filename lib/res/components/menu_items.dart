import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:global_coin/main.dart';
import 'package:global_coin/viewModel/currency_controller.dart';
import 'package:global_coin/viewModel/currency_type_controller.dart';

class MenuItems extends StatelessWidget {
  final String buttonName;

  const MenuItems({
    super.key,
    required this.buttonName,
  });

  @override
  Widget build(BuildContext context) {
    final currencyController = Get.put(CurrencyController());
    final currencyTypeController = Get.put(CurrencyTypeController());
    return Obx(
      () => ListView.builder(
        itemCount: currencyController.currencies.length,
        padding: const EdgeInsets.all(8),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          var data = currencyController.currencies[index];
          if (currencyController.currencies.isEmpty) {
            return Center(
              child: Text(
                "NoData",
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: theme.colorScheme.onBackground,
                ),
              ),
            );
          } else {
            return Column(
              children: [
                Card(
                  child: InkWell(
                    onTap: () {
                      if (buttonName == "Current") {
                        currencyTypeController.type.value = data.currencyCode;
                      } else {
                        currencyTypeController.toType.value = data.currencyCode;
                      }
                      Get.back();
                    },
                    child: SizedBox(
                      height: 50,
                      child: Center(
                        child: Text(
                          data.currencyCode,
                          style: theme.textTheme.bodyLarge!.copyWith(
                            color: theme.colorScheme.onBackground,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
