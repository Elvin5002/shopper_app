import 'package:flutter/material.dart';
import 'package:shopper_app/data/models/local/languages_data.dart';
import 'package:shopper_app/utils/constants/app_colors.dart';
import 'package:shopper_app/utils/constants/app_paddings.dart';

class OtherLanguages extends StatefulWidget {
  const OtherLanguages({super.key});

  @override
  State<OtherLanguages> createState() => _OtherLanguagesState();
}

class _OtherLanguagesState extends State<OtherLanguages> {
  List<LanguagesData> languages = LanguagesData.languages;


  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: AppPaddings.l42,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: languages.length,
          itemBuilder: (context, index) {
            final languagesData = languages[index];
            return CheckboxListTile(
              value: languagesData.isLanguagesSelected,
              title: Text(
                languagesData.languageTitle,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              activeColor: AppColors.checkBoxColor,
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    for (int i = 0; i < languages.length; i++) {
                      if (i != index) {
                        languages[i].isLanguagesSelected = false;
                      } else {
                        languagesData.isLanguagesSelected = value;
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
