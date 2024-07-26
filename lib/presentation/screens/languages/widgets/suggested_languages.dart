import 'package:flutter/material.dart';
import 'package:shopper_app/data/models/local/languages_data.dart';
import 'package:shopper_app/utils/constants/app_colors.dart';
import 'package:shopper_app/utils/constants/app_paddings.dart';

class SuggestedLanguages extends StatefulWidget {
  const SuggestedLanguages({super.key});

  @override
  State<SuggestedLanguages> createState() => _SuggestedLanguagesState();
}

class _SuggestedLanguagesState extends State<SuggestedLanguages> {
  List<LanguagesData> suggestedLanguages = LanguagesData.suggestedLanguages;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.l42,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: suggestedLanguages.length,
        itemBuilder: (BuildContext context, int index) {
          final suggestedLanguagesData = suggestedLanguages[index];
          return CheckboxListTile(
            value: suggestedLanguagesData.isSuggestedSelected,
            title: Text(
              suggestedLanguagesData.languageTitle,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            activeColor: AppColors.checkBoxColor,
            onChanged: (value) {
              if (value != null) {
                setState(() {
                  for (int i = 0; i < suggestedLanguages.length; i++) {
                    if (i != index) {
                      suggestedLanguages[i].isSuggestedSelected = false;
                    } else {
                      suggestedLanguagesData.isSuggestedSelected = value;
                    }
                  }
                });
              }
            },
          );
        },
      ),
    );
  }
}
