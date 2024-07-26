import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopper_app/utils/constants/app_assets.dart';
import 'icon_element.dart';

class MidElement extends StatelessWidget {
const MidElement({ super.key, required this.img, required this.title, this.onPressed });

  final String title;
  final String img;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconElement(title: title, img: img,),
        IconButton(onPressed: onPressed, icon: SvgPicture.asset(AppAssets.arrowRight))
      ],
    );
  }
}