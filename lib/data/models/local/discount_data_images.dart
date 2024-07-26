class DiscountDataImages{
  DiscountDataImages({required this.imageLink});

  final String imageLink;

  static List<DiscountDataImages> discountData = [
    DiscountDataImages(imageLink: "assets/png/discount1.png"),
    DiscountDataImages(imageLink: "assets/png/discount2.png"),
    DiscountDataImages(imageLink: "assets/png/discount3.png"),
  ];
}