import '../../../../utils/constants/app_strings.dart';


class SizeModel {
  final String size;

  const SizeModel({required this.size});

  static const List<SizeModel> sizes = [
    SizeModel(size: AppStrings.sizeS),
    SizeModel(size: AppStrings.sizeM),
    SizeModel(size: AppStrings.sizeL),
    SizeModel(size: AppStrings.sizeXL),
  ];
}