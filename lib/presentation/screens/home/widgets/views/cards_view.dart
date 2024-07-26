import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_strings.dart';
import '../../../../widgets/custom_appbar.dart';
import '../../../../widgets/custom_empty_widget.dart';

class CardsView extends StatelessWidget {
  const CardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar.noLeading(title: AppStrings.cart),
        CustomEmptyWidget.cart(),
      ],
    );
  }
}
