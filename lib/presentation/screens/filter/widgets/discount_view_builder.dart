import 'package:flutter/material.dart';

import 'discount_icon.dart';

class DiscountViewBuilder extends StatelessWidget {
const DiscountViewBuilder({ super.key });

  @override
  Widget build(BuildContext context){
    List<String> discount = ['50% off', '30% off', '20% off', '60% off'];
    return SizedBox(
      width: 200,
      height: 100,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,
          childAspectRatio: 2.5,
        ), 
        itemCount: discount.length,
        primary: false,
        itemBuilder: (_, int i){
          return DiscountIcon(text: discount[i]);
        }
    )
    );
  }
}