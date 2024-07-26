import 'package:flutter/material.dart';

import '../../../utils/constants/app_strings.dart';
import '../../../utils/constants/app_text_styles.dart';
import '../../../utils/extensions/sizedbox_extension.dart';
import 'widgets/searched_box.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(right: 41, left: 41),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchedBox(),
              20.h,
              const Divider(),
              10.h,
              const Text(
                AppStrings.previouslyViewed,
                style: AppTextStyles.searchTextStyle,
              ),
              //  const MasonryGridViewBuilder()
            ],
          ),
        ),
      ]),
    );
  }
}
