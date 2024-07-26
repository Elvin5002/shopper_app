import 'package:flutter/material.dart';
import '../../../../utils/extensions/sizedbox_extension.dart';
import '../models/color_model.dart';
import 'color_container.dart';

class ColorList extends StatelessWidget {
  const ColorList({super.key});

  @override
  Widget build(BuildContext context) {
    const color = ColorModel.colors;
    final List<Widget> colors = List.generate(color.length, (index) {
      return Row(
        children: [
          ColorContainer(color: color[index].color),
          15.w,
        ],
      );
    });
    return Row(
      children: colors,
    );
  }
}
