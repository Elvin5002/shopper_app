class CategoryNames{
  CategoryNames({required this.categoryName, this.isSelected = false});

  final String categoryName;
  bool isSelected;
  
static List<CategoryNames> categoryNames = [
  CategoryNames(categoryName: "Recommend"),
  CategoryNames(categoryName: "Outer"),
  CategoryNames(categoryName: "Shirt"),
  CategoryNames(categoryName: "Shoes"),
];
}