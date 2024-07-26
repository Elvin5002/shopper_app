import 'package:flutter/material.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/extensions/sizedbox_extension.dart';

class PriceView extends StatefulWidget {
const PriceView({ super.key,});

  //final RangeValues price;
  //final void Function(RangeValues)? onSlide;

  @override
  State<PriceView> createState() => _PriceViewState();
}

class _PriceViewState extends State<PriceView> {
  RangeValues _currentRangeValues = const RangeValues(5, 100);
  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(AppStrings.priceTxt, style: AppTextStyles.labeltxtStyle),
        10.h,
        SliderTheme(
          data: const SliderThemeData(
            thumbColor: AppColors.green,
            activeTrackColor: AppColors.lblack,
            inactiveTrackColor: AppColors.lgrey,
            trackHeight: 1
          ), 
          child: RangeSlider(
              values: _currentRangeValues,
              max: 200,
              divisions: 200,
              labels: RangeLabels(
                _currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },
            ),
        )
      ],
    );
  }
}