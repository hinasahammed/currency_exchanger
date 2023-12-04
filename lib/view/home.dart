import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:global_coin/res/components/currency_button.dart';
import 'package:global_coin/viewModel/currency_controller.dart';
import 'package:intl/intl.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    currencyController.fetchCurrencyRatio();
    currencyController.fetchCurrencyDetails();
  }

  final currencyController = Get.put(CurrencyController());

  void showCurrencytype() async {}

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final model = currencyController.ratioModel.value;
    final detailsmodel = currencyController.detailsModel.value;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Global Coin'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Currency',
                  style: theme.textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onBackground,
                  ),
                ),
                Text(
                  DateFormat.yMMMd().format(DateTime.now()),
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: theme.colorScheme.onBackground,
                  ),
                ),
              ],
            ),
            const Divider(),
            Text(
              'CURRENCY I HAVE',
              style: theme.textTheme.labelMedium!.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onBackground,
              ),
            ),
            Text(
              'I have this much to expense',
              style: theme.textTheme.labelSmall!.copyWith(
                color: theme.colorScheme.onBackground.withOpacity(.4),
              ),
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CurrencyButton(),
              ],
            ),
            const Gap(10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.arrowsUpDown,
                  color: theme.colorScheme.primary,
                ),
                const Gap(10),
                Text(
                  'Switch Currencies',
                  style: theme.textTheme.labelLarge!.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
              ],
            ),
            const Gap(15),
            Text(
              'CURRENCY I WANT',
              style: theme.textTheme.labelMedium!.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onBackground,
              ),
            ),
            Text(
              'I want to buy something at this price',
              style: theme.textTheme.labelSmall!.copyWith(
                color: theme.colorScheme.onBackground.withOpacity(.4),
              ),
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CurrencyButton(),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.primary,
                fixedSize: Size(Get.width, Get.height * .06),
              ),
              onPressed: () {},
              child: Text(
                'Convert',
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
