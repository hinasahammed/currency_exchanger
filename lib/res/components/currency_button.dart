import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:global_coin/res/components/menu_items.dart';
import 'package:global_coin/viewModel/currency_type_controller.dart';
import 'package:popover/popover.dart';

class CurrencyButton extends StatefulWidget {
  final String buttonName;
  const CurrencyButton({
    super.key,
    required this.buttonName,
  });

  @override
  State<CurrencyButton> createState() => _CurrencyButtonState();
}

class _CurrencyButtonState extends State<CurrencyButton> {
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    CurrencyTypeController().textfield.value.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currencyTypeController = Get.put(CurrencyTypeController());

    final theme = Theme.of(context);
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Text(
                'Currency Type',
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: theme.colorScheme.onBackground,
                ),
              ),
              IconButton(
                onPressed: () {
                  showPopover(
                    context: context,
                    bodyBuilder: (context) =>
                        MenuItems(buttonName: widget.buttonName),
                    direction: PopoverDirection.bottom,
                    backgroundColor: theme.colorScheme.onBackground,
                    width: 150,
                    height: 350,
                    arrowHeight: 15,
                    arrowWidth: 30,
                  );
                },
                icon: const Icon(Icons.arrow_drop_down),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Obx(
                () => Text(
                  widget.buttonName == 'Current'
                      ? currencyTypeController.type.value
                      : currencyTypeController.toType.value,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: theme.colorScheme.onBackground,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Gap(10),
              if (widget.buttonName == "Current")
                Obx(
                  () => SizedBox(
                    width: Get.width * .6,
                    child: TextFormField(
                      controller: currencyTypeController.textfield.value,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: '00',
                        hintStyle: theme.textTheme.displaySmall!.copyWith(
                          color: theme.colorScheme.onBackground,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: theme.textTheme.displaySmall!.copyWith(
                        color: theme.colorScheme.onBackground,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              if (widget.buttonName == "To")
                Obx(
                  () => SizedBox(
                    child: Text(
                      currencyTypeController.result.value,
                      style: theme.textTheme.displaySmall!.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.bold,
                        fontSize:
                            currencyTypeController.result.value.length >= 13
                                ? 25
                                : 35,
                      ),
                    ),
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }
}
