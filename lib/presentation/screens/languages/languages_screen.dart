import 'package:flutter/material.dart';
import 'package:shopper_app/presentation/screens/languages/widgets/language_title.dart';
import 'package:shopper_app/presentation/screens/languages/widgets/other_languages.dart';
import 'package:shopper_app/presentation/screens/languages/widgets/suggested_languages.dart';
import 'package:shopper_app/presentation/screens/languages/widgets/suggested_title.dart';
import 'package:shopper_app/presentation/widgets/custom_appbar.dart';
import 'package:shopper_app/utils/constants/app_paddings.dart';
import 'package:shopper_app/utils/extensions/context_extensions.dart';
import 'package:shopper_app/utils/extensions/sizedbox_extension.dart';
import '../../../data/models/local/languages_data.dart';
import '../../../utils/constants/app_colors.dart';

class LanguagesScreen extends StatefulWidget {
  const LanguagesScreen({super.key});

  @override
  State<LanguagesScreen> createState() => _LanguagesScreenState();
}

class _LanguagesScreenState extends State<LanguagesScreen> {
  List<LanguagesData> suggestedLanguages = LanguagesData.suggestedLanguages;
  List<LanguagesData> languages = LanguagesData.languages;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(title: "Languages"),
        body: Column(
          children: [
            30.h,
            const SuggestedTitle(),
            10.h,
            const SuggestedLanguages(),
            20.h,
            Padding(
              padding: AppPaddings.l56r36,
              child: Container(height: 1,
              width: context.fullWidth,
              color: AppColors.greyReviewTime),
            ),
            20.h,
            const LanguageTitle(),
            10.h,
            const OtherLanguages(),
          ],
        ),
      ),
    );
  }
}
