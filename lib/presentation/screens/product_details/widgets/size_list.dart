import 'package:flutter/material.dart';
import '../../../../utils/extensions/sizedbox_extension.dart';
import '../models/size_model.dart';
import 'size_container.dart';

class SizeList extends StatelessWidget {
  const SizeList({super.key});

  @override
  Widget build(BuildContext context) {
    const items = SizeModel.sizes;
    final List<Widget> sizes = List.generate(items.length, (index) {
      return Row(
        children: [
          SizeContainer(
            text: items[index].size,
          ),
          15.w,
        ],
      );
    });
    return Row(children: sizes);
  }
}
