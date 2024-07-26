import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopper_app/utils/extensions/sizedbox_extension.dart';

class IconElement extends StatelessWidget {
const IconElement({ super.key, required this.title, required this.img });

  final String title;
  final String img;

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        SvgPicture.asset(img),
        15.w,
        Text(title)
      ],
    );
  }
}