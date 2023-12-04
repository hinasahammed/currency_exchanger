import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:global_coin/res/components/menu_items.dart';
import 'package:popover/popover.dart';

class CurrencyButton extends StatelessWidget {
  const CurrencyButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Currency',
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onBackground,
              ),
            ),
            IconButton(
              onPressed: () {
                showPopover(
                  context: context,
                  bodyBuilder: (context) => const MenuItems(),
                  direction: PopoverDirection.bottom,
                  width: 200,
                  height: 400,
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
            Text(
              'USD',
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onBackground,
              ),
            ),
            const Gap(10),
            Text(
              '25',
              style: theme.textTheme.displaySmall!.copyWith(
                fontWeight: FontWeight.w600,
                color: theme.colorScheme.onBackground,
              ),
            ),
          ],
        )
      ],
    );
  }
}
