class LanguagesData {
  LanguagesData(
      {required this.languageTitle,
      this.isSuggestedSelected = false,
      this.isLanguagesSelected = false});

  final String languageTitle;
  bool isSuggestedSelected;
  bool isLanguagesSelected;

  static List<LanguagesData> suggestedLanguages = [
    LanguagesData(languageTitle: "English (US)"),
    LanguagesData(languageTitle: "English (UK)"),
  ];
  static List<LanguagesData> languages = [
    LanguagesData(languageTitle: "Mandarin"),
    LanguagesData(languageTitle: "Hindi"),
    LanguagesData(languageTitle: "Spanish"),
    LanguagesData(languageTitle: "French"),
    LanguagesData(languageTitle: "Arabic"),
    LanguagesData(languageTitle: "Bengali"),
    LanguagesData(languageTitle: "Indonesia"),
  ];
}