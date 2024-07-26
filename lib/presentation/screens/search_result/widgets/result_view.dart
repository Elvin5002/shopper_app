import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../../data/models/local/sunglasses.dart';
import '../../../../utils/extensions/context_extensions.dart';
import 'result_items.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(BuildContext context) {
    final items = Sunglasses.sunglasses;
    return SizedBox(
      width: context.fullWidth,
      height: context.fullHeight * 0.8,
      child: MasonryGridView.builder(
        crossAxisSpacing: 20,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemCount: items.length,
        itemBuilder: (_, i) {
          if (i % 2 == 0) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ResultItems(sunglasses: items[i]),
            );
          }
          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ResultItems(sunglasses: items[i]),
          );
        },
      ),
    );
  }
}
