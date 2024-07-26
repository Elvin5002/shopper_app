import 'package:flutter/material.dart';
import 'package:shopper_app/presentation/screens/account_edit/widgets/custom_input.dart';

import '../../../data/models/local/sunglasses.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/extensions/sizedbox_extension.dart';
import 'widgets/result_view.dart';
import 'widgets/top_part.dart';

class SearchResultPage extends StatelessWidget {
  SearchResultPage({
    super.key,
  });
  final sunglasses = Sunglasses.sunglasses;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppPaddings.h41,
        child: ListView(
          children: [
            CustomInput(title: 'Search product'),
            20.h,
            TopPart(sunglassesLength: sunglasses.length.toString()),
            20.h,
            const ResultView(),
          ],
        ),
      ),
    );
  }
}
